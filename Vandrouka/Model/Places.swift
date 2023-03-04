//
//  Places.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import Foundation
import SwiftUI
import MapKit

enum PointCategory: String {
    case camping = "Camping"
    case apartment = "Apartment"
    case castle = "Castle"
    case manor = "Manor"
    case catholic = "Catholic"
    case orthodox = "Orthodox"
    case museum = "Museum"
    case landmark = "Landmark"
}

struct Place: Identifiable {
    let id = UUID()
    let images: [ImagePlace]
    let name: String
    let description: String
    let fullDescription: String
    var isFavourite: Bool
    let latitude: Double
    let longitude: Double
    let category: PointCategory
    
    init(images: [ImagePlace], name: String, description: String, fullDescription: String, isFavourite: Bool, latitude: Double, longitude: Double, category: PointCategory) {
        self.images = images
        self.name = name
        self.description = description
        self.fullDescription = fullDescription
        self.isFavourite = isFavourite
        self.latitude = latitude
        self.longitude = longitude
        self.category = category
    }
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var color: Color {
        switch category {
            case .camping:
                return .red
            case .apartment:
                return .red
            case .castle:
                return .green
            case .manor:
                return .cyan
            case .catholic:
                return .orange
            case .orthodox:
                return .orange
            case .museum:
                return .blue
            case .landmark:
                return .brown
        }
    }
    
    var symbol: Image {
        switch category {
            case .camping:
                return Image(systemName: "figure.water.fitness")
            case .apartment:
                return Image(systemName: "building.2.crop.circle.fill")
            case .castle:
                return Image(systemName: "building.columns.circle.fill")
            case .manor:
                return Image(systemName: "house.circle.fill")
            case .catholic:
                return Image(systemName: "star.circle.fill")
            case .orthodox:
                return Image(systemName: "star.circle.fill")
            case .museum:
                return Image(systemName: "building.columns.circle.fill")
            case .landmark:
                return Image(systemName: "star.circle.fill")
        }
    }
}

struct ImagePlace: Identifiable {
    let id = UUID()
    let image: String
}
