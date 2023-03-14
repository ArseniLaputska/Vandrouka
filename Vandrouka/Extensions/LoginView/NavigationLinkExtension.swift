//
//  NavigationLinkExtension.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI

extension View {
    func navigationLinkStyle(color: Color = .black, width: CGFloat = 150, height: CGFloat = 50) -> some View {
        self
            .foregroundColor(color)
            .frame(width: width, height: height)
    }
}
