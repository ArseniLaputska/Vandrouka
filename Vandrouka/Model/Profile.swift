//
//  Profile.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 12.01.23.
//

import Foundation

struct Profile: Identifiable {
    let id = UUID()
    let name, bio, location, languages, email, birthDate: String
    let phone: Int
}
