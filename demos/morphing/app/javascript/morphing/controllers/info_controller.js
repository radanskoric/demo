import { Controller } from "@hotwired/stimulus"
import { post } from "@rails/request.js"

export default class extends Controller {
  static values = {
    url: String
  }

  persist() {
    post(this.urlValue, { body: JSON.stringify({ open: this.element.open }) })
  }
}
