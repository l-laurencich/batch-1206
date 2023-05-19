import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carsList"]

  connect() {
    console.log("hello from garage controller!")
    this.garageName= "legarage"
    this.garageUrl = `https://wagon-garage-api.herokuapp.com/${this.garageName}/cars`
    this.fetchCars()
  }

  fetchCars() {
    this.carsListTarget.innerHTML = ""
    fetch(this.garageUrl)
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      data.forEach(car => this.insertCarCard(car))
    })
  }

  createCar(event) {
    event.preventDefault()
    const formData = new FormData(event.currentTarget)
    const myNewCar = Object.fromEntries(formData)
    console.log(myNewCar)
    fetch(this.garageUrl, {
      method: "POST",
      headers: {"Content-Type" : "application/json"},
      body: JSON.stringify(myNewCar)
    })
    .then(() => this.fetchCars())
    event.currentTarget.reset()
  }

  insertCarCard(car) {
    const carCard = `
    <div class="car">
      <div class="car-image">
        <img src="https://source.unsplash.com/random?${car.brand}" />
      </div>
      <div class="car-info">
        <h4>${car.brand} ${car.model}</h4>
        <p><strong>Owner:</strong> ${car.owner}</p>
        <p><strong>Plate:</strong>${car.plate} </p>
      </div>
    </div>
    ` 
    this.carsListTarget.insertAdjacentHTML("beforeend", carCard)
  }
}




