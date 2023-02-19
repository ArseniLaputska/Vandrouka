//
//  Places.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import Foundation

enum Category: String {
    case camping = "Camping"
    case apartment = "Apartment"
}

struct Places: Identifiable {
    let id = UUID()
    let images: [ImagePlace]
    let placeName: String
    let description: String
    let fullDescription: String
    let price: Double
    let rating: Double
    var isFavourite: Bool
    let latitude: Double
    let longitude: Double
    let category: Category
}

struct ImagePlace: Identifiable {
    let id = UUID()
    let image: String
}
