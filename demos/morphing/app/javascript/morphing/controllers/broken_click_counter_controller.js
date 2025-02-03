import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    count: Number
  }

  connect() {
    this.updateCount()
    document.addEventListener("click", this.increment.bind(this))
  }

  disconnect() {
    document.removeEventListener("click", this.increment.bind(this))
  }

  increment() {
    this.countValue++
    this.updateCount()
  }

  updateCount() {
    this.element.textContent = `Clicks: ${this.countValue}`
  }
}
