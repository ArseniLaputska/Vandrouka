//
//  LoginHeaderView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 17.03.23.
//

import SwiftUI

struct LoginHeaderView: View {
    
    var label: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.largeTitle)
                .bold()
                .padding(.leading, 20.0)
            
            Spacer()
        }
    }
}
