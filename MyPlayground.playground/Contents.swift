class Car {
    var brand: String
    var model: String
    var year: Int
    var price : Double
    
    init(brand: String, model: String, year: Int, price: Double) {
        self.brand = brand
        self.model = model
        self.year = year
        self.price = price
    }
    
    func PrintCarInfo() {
        print(brand, model, year, price)
    }
    
    func GetCarInfo() -> String{
        return "\(self.brand) \(self.model)"
    }
}

class BMWCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, year: Int, price: Double, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, price: price)
    }
}

class ToyotaCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, year: Int, price: Double, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, price: price)
    }
}

class HyundaiCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, year: Int, price: Double, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, price: price)
    }
}

class MercedesCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, year: Int, price: Double, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, price: price)
    }
}

func createCar(brand: String, model: String, year: Int, price: Double ) -> Car {
    return Car(brand: brand, model: model, year: year, price: price)
}

func makeRace(firstCar : Car, secondCar : Car) -> Car {
        var winner = firstCar.price <= secondCar.price ? firstCar : secondCar
        return winner
}

var cars : [Car] = []
cars.append(createCar(brand: "Mercedes", model: "X5", year: 2020, price: 1939000))
cars.append(createCar(brand: "BMW", model: "M5", year: 2022, price: 12330000))
cars.append(createCar(brand: "Hyundai", model: "Sonata", year: 2022, price: 3439000))
cars.append(createCar(brand: "Toyota", model: "Corolla", year: 2019, price: 1730000))

while cars.count > 1 {
    var newRound: [Car] = []
    var i = 0
    while i < cars.count {
        if i + 1 < cars.count {
            let winner = makeRace(firstCar: cars[i], secondCar: cars[i + 1])
            print("\(winner.GetCarInfo()) победитель против \(cars[i + 1].GetCarInfo())")
            newRound.append(winner)
            i += 2
        } else {
            newRound.append(cars[i])
            i += 1
        }
    }
    cars = newRound
}

print("Победитель")
cars[0].PrintCarInfo()
