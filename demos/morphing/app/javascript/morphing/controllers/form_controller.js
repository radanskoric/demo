import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("turbo:submit-end", (_) => {
      console.log("Reseting form after submit ended.")
      this.element.reset()
    })
  }
}
