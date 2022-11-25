import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calcul-tarif"
export default class extends Controller {
  connect() {
    console.log("Hello Brice")
  }

  calculTarif(){
    const nbProduct = document.querySelector(".table__line--qte").value
    console.log(nbProduct)
    const moTarif = document.querySelector(".table__line--tarif").value
    console.log(moTarif)
    const moTotal = document.querySelector(".table__line--tot")

    const resulte = nbProduct * moTarif
    console.log(resulte)
    moTotal.innerText = resulte
    // this.element.innerText = 10
    // console.log(this.element.innerText)
  }
}
