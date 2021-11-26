import UIKit

var greeting = "Hello, playground"

enum BikeError: Error{
    case insufficientPetrolQuntity(neededQuntity: Int)
    case insufficientAge(neededAge: Int)
}


struct Bike{
    
    func startPicnic(petrolQuntity: Int) throws -> String {
        
        if petrolQuntity < 4 {
            throw BikeError.insufficientPetrolQuntity(neededQuntity: 4)
        }
        
        return "Ready for Picnic"
    }
    
    func startBike(age: Int) throws -> String {
        if age < 18 {
            throw BikeError.insufficientAge(neededAge: 18)
        }
        
        return "Bike Started"
    }
}

let bike = Bike()
do{
//   try bike.startPicnic(petrolQuntity: 3)
    try bike.startBike(age: 10)
}catch BikeError.insufficientPetrolQuntity(neededQuntity: let quntity) {
     debugPrint("Insufficient Petrol, Needed \(quntity) Ltr")
}catch BikeError.insufficientAge(neededAge: let age) {
    debugPrint("Insufficient Age, needed \(age) years")
}
        



