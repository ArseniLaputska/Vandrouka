//
//  RectPreferenceKey.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.03.23.
//

import SwiftUI

struct RectPreferenceKey: PreferenceKey {
    typealias Value = CGRect

    static var defaultValue = CGRect.zero

    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
    
}
