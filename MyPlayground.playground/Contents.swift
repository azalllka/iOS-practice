class Car {
    var brand: String
    var model: String
    var year: Int
    var speed : Double
    
    init(brand: String, model: String, year: Int, speed: Double) {
        self.brand = brand
        self.model = model
        self.year = year
        self.speed = speed
    }
    
    func PrintCarInfo() {
        print("\(brand) \(model) (\(year), \(speed)km/h)")
    }
    
    func GetCarInfo() -> String{
        return "\(self.brand) \(self.model)"
    }
}

class BMWCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(
        brand: String,
        model: String,
        year: Int,
        speed: Double,
        enginePower: Int,
        fuelConsumption: Double
    ) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, speed: speed)
    }
}

class ToyotaCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(
        brand: String,
        model: String,
        year: Int,
        speed: Double,
        enginePower: Int,
        fuelConsumption: Double
    ) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, speed: speed)
    }
}

class HyundaiCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(
        brand: String,
        model: String,
        year: Int,
        speed: Double,
        enginePower: Int,
        fuelConsumption: Double
    ) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, speed: speed)
    }
}

class MercedesCar: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(
        brand: String,
        model: String,
        year: Int,
        speed: Double,
        enginePower: Int,
        fuelConsumption: Double
    ) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, year: year, speed: speed)
    }
}

func createCar(brand: String, model: String, year: Int, speed: Double) -> Car {
    switch brand {
    case "BMW":
        return BMWCar(
            brand: brand,
            model: model,
            year: year,
            speed: speed,
            enginePower: 400,
            fuelConsumption: 10.5
        )
        
    case "Toyota":
        return ToyotaCar(
            brand: brand,
            model: model,
            year: year,
            speed: speed,
            enginePower: 180,
            fuelConsumption: 8.0
        )
        
    case "Hyundai":
        return HyundaiCar(
            brand: brand,
            model: model,
            year: year,
            speed: speed,
            enginePower: 220,
            fuelConsumption: 9.0
        )
        
    case "Mercedes":
        return MercedesCar(
            brand: brand,
            model: model,
            year: year,
            speed: speed,
            enginePower: 450,
            fuelConsumption: 11.0
        )
        
    default:
        return Car(brand: brand, model: model, year: year, speed: speed)
    }
}

func makeRace(firstCar: Car, secondCar: Car) -> Car {
    if firstCar.speed >= secondCar.speed {
        return firstCar
    } else {
        return secondCar
    }
}

var cars : [Car] = []
cars.append(createCar(brand: "Mercedes", model: "S-class", year: 2020, speed: 310))
cars.append(createCar(brand: "BMW", model: "M5", year: 2022, speed: 305))
cars.append(createCar(brand: "Hyundai", model: "Sonata", year: 2022, speed: 271))
cars.append(createCar(brand: "Toyota", model: "Camry", year: 2019, speed: 230))

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
