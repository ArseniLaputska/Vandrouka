//
//  EnterRestoreCodeView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 20.03.23.
//

import SwiftUI

struct EnterRestoreCodeView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var code: String = ""
    @State var isValid: Bool = false
    
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
                
                LoginHeaderView(label: "Enter Code")
                    .padding(.bottom, 20.0)
                
                HStack {
                    Text("Check your email please, we send code to restore your password.")
                        .font(.body)
                        .padding(.leading, 20.0)
                    
                    Spacer()
                }
                
                LoginFlowTextField(titleKey: "Code", text: $code, isSecure: false, showIcon: false)
                    .padding([.bottom, .top], 20.0)
                
                LoginFlowButtonView(label: "Submit", progressText: "Submitting", action: {
                    isValid.toggle()
                })
                .fullScreenCover(isPresented: $isValid, content: {
                    ResetPasswordView()
                })
                
                Spacer()
                
            }
            .padding(.vertical, 20.0)
        }

    }
}
