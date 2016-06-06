city_bus = {
  bus_items: [
    "seats",
    "handrails",
    "steps",
    "luggage carrier",
    "stopping buttons"
    ],
  people: {
    tourists: [
      "cameras",
      "maps",
      "sunglasses",
      "hats"
      ],
    commuters: [
      "laptop bags",
      "lunch bags",
      ],
    students: [
      "backpacks",
      ],
    driver: [],
    businessmen: [
      "earbuds",
      "ipads"
      ],
  }
}

p city_bus[:bus_items].last

p city_bus[:bus_items][2]

p city_bus[:people][:students][0]

p city_bus[:people][:businessmen][1]