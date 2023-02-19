//
//  Image.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.02.23.
//

import Foundation
import SwiftUI

extension Image {
    func profileSettings() -> some View {
        return self
            .resizable()
            .cornerRadius(70)
            .overlay(RoundedRectangle(cornerRadius: 70)
                .stroke(Color.red, lineWidth: 4))
            .shadow(radius: 10)
            .frame(width: 150, height: 150)
    }
}
