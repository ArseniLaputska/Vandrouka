//
//  LoginFlowButtonView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 16.03.23.
//

import SwiftUI

struct LoginFlowButtonView: View {
    
    var label: String
    var progressText: String = ""
    var action: () async -> Void
    
    var body: some View {
        AsyncButton(action: action, label: {
            Text(label)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .foregroundColor(.white)
                .bold()
        }, title: progressText)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.bittersweet)
        .cornerRadius(12)
        .padding(.horizontal, 20.0)
    }
}
