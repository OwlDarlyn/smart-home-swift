//
//  Devices.swift
//  TestApp
//
//  Created by Darlyn on 22.07.2022.
//

import Foundation

struct DevicesModel: Codable {
    var devices: DevicesDetailModel?
    var user: UserDetailModel?
    var address: AddressDetailModel?
        
    static func create(_ dict: [String: Any]) -> DevicesModel? {
        guard let devices = dict["devices"] as? [String: Any] else {
                  
            var devices: [String: Any] = [:]
            if let devicesValue = dict["devices"] as? [String: Any] {
                devices = devicesValue
                  }
            var user: [String: Any] = [:]
            if let userValue = dict["user"] as? [String: Any] {
                user = userValue
                  }
            var address: [String: Any] = [:]
            if let addressValue = dict["address"] as? [String: Any] {
                address = addressValue
                  }

            return DevicesModel(devices: DevicesDetailModel.create(devices))
            
              }
        return DevicesModel(devices: DevicesDetailModel.create(devices))
        
    }
}

struct DevicesDetailModel: Codable {
    var id: Int?
    var deviceName: String?
    var intensity: Int?
    var mode: String?
    var productType: String?
    
    static func create(_ dict: [String: Any]) -> DevicesDetailModel? {
        guard let id = dict["id"] as? Int,
              let deviceName = dict["deviceName"] as? String,
              let intensity = dict["intensity"] as? Int,
              let mode = dict["mode"] as? String,
              let productType = dict["productType"] as? String
        else {
                  
            var id: Int = 0
            if let idValue = dict["id"] as? Int {
                 id = idValue
            }
                  
            var deviceName: String = ""
            if let deviceNameValue = dict["deviceName"] as? String {
                deviceName = deviceNameValue
            }
            
            var intensity: Int = 0
            if let intensityValue = dict["intensity"] as? Int {
                intensity = intensityValue
            }
            
            var mode: String = ""
            if let modeValue = dict["mode"] as? String {
                mode = modeValue
            }
            
            var productType: String = ""
            if let productTypeValue = dict["productType"] as? String {
                productType = productTypeValue
            }
            
                 
           return DevicesDetailModel(
                    id: id,
                    deviceName: deviceName,
                    intensity: intensity,
                    mode: mode,
                    productType: productType)
              }
        
        return DevicesDetailModel(
            id: id,
            deviceName: deviceName,
            intensity: intensity,
            mode: mode,
            productType: productType)
    }
}
    
        struct UserDetailModel: Codable {
        var firstName: String?
        var lastName: String?
        var address: String?
        var birthDate: Int?
        
        static func create(_ dict: [String: Any]) -> UserDetailModel? {
            guard let firstName = dict["firstName"] as? String,
                  let lastName = dict["lastName"] as? String,
                  let address = dict["address"] as? String,
                  let birthDate = dict["birthDate"] as? Int
            else {
                      
                var firstName: String = ""
                if let firstNameValue = dict["firstName"] as? String {
                    firstName = firstNameValue
                }
                var lastName: String = ""
                if let lastNameValue = dict["lastName"] as? String {
                    lastName = lastNameValue
                }
                var address: String = ""
                if let addressValue = dict["address"] as? String {
                    address = addressValue
                }
                var birthDate: Int = 0
                if let birthDateValue = dict["birthDate"] as?  Int{
                    birthDate = birthDateValue
                }
                return UserDetailModel(
                    firstName: firstName,
                    lastName: lastName,
                    address: address,
                    birthDate: birthDate)

}
            return UserDetailModel(
                firstName: firstName,
                lastName: lastName,
                address: address,
                birthDate: birthDate)

        }
    }


struct AddressDetailModel: Codable {
    var city: String?
    var postalCode: Int?
    var street: String?
    var streetCode: String?
    var country: String?

    static func create(_ dict: [String: Any]) -> AddressDetailModel? {
        guard let city = dict["city"] as? String,
              let postalCode = dict["postalCode"] as? Int,
              let street = dict["street"] as? String,
              let streetCode = dict["streetCode"] as? String,
                let country = dict["country"] as? String

        else {
                  
            var city: String = ""
            if let cityValue = dict["city"] as? String {
                city = cityValue
            }
            var postalCode: Int = 0
            if let postalCodeValue = dict["postalCode"] as? Int {
                postalCode = postalCodeValue
            }
            var street: String = ""
            if let streetValue = dict["street"] as? String {
                street = streetValue
            }
            var streetCode: String = ""
            if let streetCodeValue = dict["streetCode"] as? String {
                streetCode = streetCodeValue
            }
            var country: String = ""
            if let countryValue = dict["country"] as? String {
                country = countryValue
            }
            return AddressDetailModel(
                city: city,
                postalCode: postalCode,
                street: street,
                streetCode: streetCode,
                country: country)
        }
        return AddressDetailModel(
            city: city,
            postalCode: postalCode,
            street: street,
            streetCode: streetCode,
            country: country)
}
}

