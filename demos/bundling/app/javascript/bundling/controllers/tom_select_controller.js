import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom_select"

export default class extends Controller {
  connect() {
    this.tom = new TomSelect(this.element, {})
  }

  disconnect() {
    this.tom.destroy()
  }
}
