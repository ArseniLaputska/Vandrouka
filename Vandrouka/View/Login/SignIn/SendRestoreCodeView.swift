//
//  ForgotPasswordView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 17.03.23.
//

import SwiftUI

struct SendRestoreCodeView: View {
    
    @State private var email: String = ""
    @State private var isSend: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    
                    LoginHeaderView(label: "Forgot Password?")
                        .padding(.bottom, 20.0)
                    
                    HStack {
                        Text("Don't worry! It happens. Please enter the address associated with your account.")
                            .font(.body)
                            .padding(.leading, 20.0)
                        
                        Spacer()
                    }
                    
                    LoginFlowTextField(titleKey: "Email", text: $email, isSecure: false, showIcon: false)
                        .padding([.bottom, .top], 20.0)
                    
                    LoginFlowButtonView(label: "Submit", progressText: "Submitting", action: {
                        isSend = true
                    })
                    .fullScreenCover(isPresented: $isSend, content: {
                        EnterRestoreCodeView()
                    })
                    
                    Spacer()
                    
                }
                .padding(.vertical, 20.0)
            }
        }
    }
}
