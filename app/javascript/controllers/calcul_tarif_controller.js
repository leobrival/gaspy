import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "moins", "plus", "fullPrice"]
  static values = {
    unitPrice: Number,
    productQuantity: Number,
    updateUrl: String
  }

  calculTarifMoins(){
    if (this.inputTarget.value <= 1) return

    this.inputTarget.value--
    this.majTarif()
  }

  calculTarifPlus(){
    console.log(this.inputTarget.value)
    if (this.inputTarget.value >= this.productQuantityValue) return

    this.inputTarget.value++
    this.majTarif()
  }

  majTarif() {
    const newPrice = this.inputTarget.value * this.unitPriceValue
    this.fullPriceTarget.innerHTML = newPrice
    this.#updateBasketItemQuantity()
  }

  #updateBasketItemQuantity() {
    const data = new FormData()
    data.append('basket_item[quantity]', this.inputTarget.value)
    const url = this.updateUrlValue
    const options = {
      method: 'PATCH',
      headers: {
        'Accept': 'application/json',
        'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
      },
      body: data
    }

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        if (data.errors) {
          window.alert(data.errors)
        } else {
          this.#updateBasketTotalPrice(data.basket_price)
        }
      })
  }

  #updateBasketTotalPrice(newPrice) {
    document.getElementById('basket-total-price').innerHTML = newPrice
  }

}
