//
//  LoginTextFields.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI

extension View {
    func loginStyle() -> some View {
        self
            .padding()
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 20.0)
    }
}

extension Color {
    static let aluminium = Color("aluminium")
    static let whisper = Color("whisper")
    static let bittersweet = Color("bittersweet")
    static let ghost = Color("ghost")
}
