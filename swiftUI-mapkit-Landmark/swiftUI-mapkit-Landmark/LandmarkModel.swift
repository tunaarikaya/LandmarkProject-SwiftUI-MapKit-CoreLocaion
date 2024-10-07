//
//  LandmarkModel.swift
//  swiftUI-mapkit-Landmark
//
//  Created by Mehmet Tuna Arıkaya on 13.09.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Identifiable {
    var id : Int
    var name : String
    var imageName : String
    var country : String
    var category : String
    var coordinates : Coordinates
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude , longitude: coordinates.longitude)
        
    }
    
}
struct Coordinates {
    var latitude: Double
    var longitude: Double
}

let eiffelLandmark = Landmark(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.8583701, longitude: 2.2922926))

let colosseumLandmark = Landmark(id: 1, name: "Colosseum", imageName: "colesseum", country: "Italy", category: "Historic Area", coordinates: Coordinates(latitude: 41.8902102, longitude: 12.4900422))

let londonBridgeLandmark = Landmark(id: 2, name: "London Bridge", imageName: "londonBridge", country: "UK", category: "Bridge", coordinates: Coordinates(latitude: 51.5079111, longitude: -0.0899163))

let pisaLandmark = Landmark(id: 3, name: "Pisa", imageName: "pisa", country: "pisa", category: "Tower", coordinates: Coordinates(latitude: 43.7229503, longitude: 10.3943062))

let sydneyLandmark = Landmark(id: 4, name: "Sydney Opera House", imageName: "opera", country: "Australia", category: "Opera House", coordinates: Coordinates(latitude: -33.8567844, longitude: 151.213108))

let landmarkArray = [eiffelLandmark,colosseumLandmark,londonBridgeLandmark,pisaLandmark,sydneyLandmark]
