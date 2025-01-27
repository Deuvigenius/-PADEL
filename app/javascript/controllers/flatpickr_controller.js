import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element)

    flatpickr(this.element, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
    });
  }
}
