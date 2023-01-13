//
//  RideType.swift
//  UberSwiftUITutorial
//
//  Created by Ruba Abuhatlah on 18/06/1444 AH.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case WheelChairCar
    case WheelChairVan
    case SpecialAssistance
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case.WheelChairCar: return "Car"
        case.WheelChairVan: return "Van"
        case.SpecialAssistance: return "Luxury"
            
        }
    }
    
    var imageName: String {
        switch self {
        case.WheelChairCar: return "WheelChair-Car"
        case.WheelChairVan: return "WheelChair-Van"
        case.SpecialAssistance: return "Special-Assistance"
            
        }
    }
    
    var baseFare:Double {
        switch self {
        case .WheelChairCar: return 5
        case .WheelChairVan: return 20
        case .SpecialAssistance: return 10
        }
    }
    
    func computerPrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case .WheelChairCar: return distanceInMiles * 1.5 + baseFare
        case .WheelChairVan: return distanceInMiles * 2.0 + baseFare
        case .SpecialAssistance: return distanceInMiles * 1.75 + baseFare
        
        }
    }
}
