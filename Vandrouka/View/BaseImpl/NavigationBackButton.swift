//
//  NavigationBackButton.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 16.03.23.
//

import SwiftUI

struct NavigationBackButton: View {
    
    var action: () -> Void
    var label: String = ""
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .bold()
                
                Text(label)
                    .font(.body)
            }
        })
    }
}
