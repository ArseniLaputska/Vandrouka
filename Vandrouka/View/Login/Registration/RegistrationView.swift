//
//  RegistrationView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI

struct RegistrationView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isMatch = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("whisper")
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("Sign up")
                            .font(.largeTitle)
                            .bold()
                            .padding(.leading, 20.0)
                        
                        Spacer()
                    }
                    
                    LoginFlowTextField(titleKey: "Email", text: $email, isSecure: false, showIcon: false)
                    
                    LoginFlowTextField(titleKey: "Password", text: $password)
                    
                    LoginFlowTextField(titleKey: "Confirm password", text: $confirmPassword)
                    
                    HStack {
                        Text("Password do not match")
                            .font(.callout)
                            .foregroundColor(.red)
                            .padding(.leading, 20.0)
                        
                        Spacer()
                    }
                    .opacity(checkPassword(password, confirmPassword) ? 0.0 : 1.0)
                    
                    LoginFlowButtonView(label: "Confirm", action: {
                        
                    })
                    .opacity(!checkPassword(password, confirmPassword) ? 0.5 : 1)
                    .disabled(!checkPassword(password, confirmPassword))
                    .padding(.top, 20.0)
                    
                }
            }
        }
    }
    
    private func checkPassword(_ password: String, _ confirmPassword: String) -> Bool {
        return password == confirmPassword
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
