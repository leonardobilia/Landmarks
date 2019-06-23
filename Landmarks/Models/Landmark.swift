//
//  Landmark.swift
//  Landmarks
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    fileprivate var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
