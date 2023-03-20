//
//  ResetPasswordView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 20.03.23.
//

import SwiftUI

struct ResetPasswordView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var isMatch: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                
                HStack {
                    NavigationBackButton(action: {
                        dismiss()
                    }, label: "Back")
                    
                    Spacer()
                }
                .padding(.leading, 5.0)
                
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
                    await toggle()
                })
                
                Spacer()
                
            }
            .padding(.vertical, 20.0)
        }
    }
}

extension ResetPasswordView {
    func toggle() async {
        isMatch.toggle()
    }
}
