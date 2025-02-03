import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    id: String
  }

  toggle(_) {
    const urlParams = new URLSearchParams(window.location.search)
    const openIds = this.getOpenIds(urlParams)

    if (this.element.open) {
      this.addId(openIds, this.idValue)
    } else {
      this.removeId(openIds, this.idValue)
    }

    this.setOpenIds(urlParams, openIds)
  }

  getOpenIds = (urlParams) => {
    return (urlParams.get('details') || '').split(',').filter(Boolean)
  }

  setOpenIds = (urlParams, openIds) => {
    if(openIds.length > 0) {
      urlParams.set('details', openIds.join(','))
    } else {
      urlParams.delete('details')
    }

    // Update URL without page reload
    const newUrl = `${window.location.pathname}?${urlParams.toString()}`
    window.history.pushState({}, '', newUrl)
  }

  addId = (idList, id) => {
    if (!idList.includes(id)) {
      idList.push(id)
    }
  }

  removeId = (idList, id) => {
    const index = idList.indexOf(id)
    if (index > -1) {
      idList.splice(index, 1)
    }
  }
}
