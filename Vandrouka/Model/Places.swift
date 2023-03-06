//
//  Places.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import Foundation
import SwiftUI
import MapKit

enum PointCategory: String, CaseIterable {
    case castle = "Castles"
    case manor = "Manors"
    case catholic = "Catholic"
    case orthodox = "Orthodox"
    case tombs = "Tombs"
    case synagogues = "Synagogues"
    case museum = "Museums"
    case ruins = "Ruins"
    case abandoned = "Abandoned"
    case other = "Other"
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
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var color: Color {
        switch category {
            case .castle:
                return .red
            case .manor:
                return .red
            case .catholic:
                return .green
            case .orthodox:
                return .green
            case .museum:
                return .blue
            case .other:
                return .brown
            case .synagogues:
                return .blue
            case .ruins:
                return .purple
            case .abandoned:
                return .cyan
            case .tombs:
                return .green
        }
    }
    
    var symbol: Image {
        switch category {
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
            case .other:
                return Image(systemName: "star.circle.fill")
            case .synagogues:
                return Image(systemName: "star.circle.fill")
            case .ruins:
                return Image(systemName: "star.circle.fill")
            case .abandoned:
                return Image(systemName: "star.circle.fill")
            case .tombs:
                return Image(systemName: "star.circle.fill")
        }
    }
}

struct ImagePlace: Identifiable {
    let id = UUID()
    let image: String
}
