//
//  UnderlineModifier.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.03.23.
//

import SwiftUI

struct UnderlineModifier: ViewModifier {
    var selectedIndex: Int?
    let frames: [CGRect]

    func body(content: Content) -> some View {
        content
            .background(
                Rectangle()
                    .fill(selectedIndex == nil ? Color.clear : .red)
                    .frame(width: frames[selectedIndex.safelyUnwrap].width, height: 2)
                    .offset(x: frames[selectedIndex.safelyUnwrap].minX - frames[0].minX), alignment: .bottomLeading
            )
            .background(
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1), alignment: .bottomLeading
            )
            .animation(.default, value: selectedIndex)
    }
}
