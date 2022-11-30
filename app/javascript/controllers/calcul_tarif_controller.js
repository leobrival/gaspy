import { Controller } from "@hotwired/stimulus"
// import { debug } from "webpack"

export default class extends Controller {
  static targets = ["input", "moins", "plus", "fullPrice"]
  static values = {
    unitPrice: Number,
    productQuantity: Number,
    updateUrl: String
  }

  calculTarifMoins(){
    console.log("Brice")
    console.log("Moins")

    if (this.inputTarget.value = 0) return
    this.#fetchBasketItemQuantity(-1)
    this.majTarif(-1)
  }

  calculTarifPlus(){
    /* console.log(this.inputTarget.value)
    if (this.inputTarget.value >= this.productQuantityValue) return

    this.inputTarget.value++
    this.majTarif() */
    console.log('Plus')

    this.#fetchBasketItemQuantity(1)
    this.majTarif(1)
  }

  majTarif(qtityChange) {
    const newPrice = (parseInt(this.inputTarget.value, 10) + qtityChange) * this.unitPriceValue
    this.fullPriceTarget.innerHTML = newPrice.toFixed(2)
    // this.#fetchBasketItemQuantity(this.inputTarget.value)
  }

  delete() {
    const qteBack = this.inputTarget.value
    this.#fetchBasketItemQuantity(-qteBack)
    this.majTarif(-qteBack)
  }


  #fetchBasketItemQuantity(qtityChange) {
  // #updateBasketItemQuantity() {
    const data = new FormData()
    // data.append('basket_item[quantity]', this.inputTarget.value)
    data.append('basket_item[quantity]', qtityChange)
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
          console.log('payload quantity', data.basket_quantity)
          this.#updateBasketItemQuantity(data.basket_quantity)
          this.#updateBasketTotalPrice(data.basket_price)
        }
      })
  }

  #updateBasketTotalPrice(newPrice) {
    document.getElementById('basket-total-price').innerHTML = newPrice.toFixed(2)
  }

  #updateBasketItemQuantity(newQuantity) {
    console.log(newQuantity)
    this.inputTarget.value = newQuantity
  }

  #countIntemsInBasket() {
    let tabNbItems = 0
    console.log(document.querySelectorAll('.table__line--qte').innerText)
    tabNbItems += parseInt(document.querySelectorAll('.table__line--qte').innerText)
  }
}
