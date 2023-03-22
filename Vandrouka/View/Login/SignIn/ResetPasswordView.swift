//
//  ResetPasswordView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 20.03.23.
//

import SwiftUI

struct ResetPasswordView: View {
    
    @Binding var path: [RestorePasswordScreenFlow]
    
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                LoginHeaderView(label: "Reset Password")
                    .padding(.bottom, 20.0)
                
                HStack {
                    Text("Check your email please, we send code to restore your password.")
                        .font(.body)
                        .padding(.leading, 20.0)
                    
                    Spacer()
                }
                
                LoginFlowTextField(titleKey: "New password", text: $password)
                
                LoginFlowTextField(titleKey: "Confirm new password", text: $password)
                
                LoginFlowButtonView(label: "Submit", progressText: "Submitting", action: {
                    path.removeAll()
                })
                .padding(.top, 20.0)
                
                Spacer()
                
            }
            .padding(.vertical, 20.0)
        }
    }
}
