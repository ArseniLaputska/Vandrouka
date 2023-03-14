//
//  PasswordTextField.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI

struct PasswordTextField: View {
    
    var titleKey: String
    @Binding var text: String
    @State var isSecure: Bool = true
    
    var body: some View {
        HStack {
            Group {
                
                if isSecure {
                    SecureField(titleKey, text: $text)
                } else {
                    TextField(titleKey, text: $text)
                }
            }
            .animation(.easeInOut(duration: 0.2), value: isSecure)
            
            Button(action: {
                isSecure.toggle()
            }, label: {
                Image(systemName: !isSecure ? "eye.slash" : "eye" )
                    .tint(.gray)
            })
        }
    }
}
