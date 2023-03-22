//
//  EnterRestoreCodeView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 20.03.23.
//

import SwiftUI

struct EnterRestoreCodeView: View {
    
    @Binding var path: [RestorePasswordScreenFlow]
    
    @State var code: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                
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
                    path.append(.resetPassword)
                })
                
                Spacer()
                
            }
            .padding(.vertical, 20.0)
        }

    }
}
