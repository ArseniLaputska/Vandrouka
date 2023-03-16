//
//  LoginView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 10.03.23.
//

import SwiftUI

struct PresentAppView: View {
    
    @State var showRegisterFlow: Bool = false
    @State var showSignIn: Bool = false
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                Color("whisper")
                    .ignoresSafeArea()
                
                VStack {
                    Image("Fotor_AI")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding(.horizontal, 10.0)
                        .padding(.top, 5.0)
                        
                    Text("Discover your \n dream place here!")
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 35.0)
                        .padding(.top, 35.0)
                    
                    Text("Explore all the most exiting places based on your interest")
                        .font(.title3)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30.0)
                    
                    Spacer()
                    
                    LoginLink(signIn: {
                        SignInView()
                            .navigationBarBackButtonHidden()
                    }, register: {
                        ExploreView()
                    })
                    
                    Spacer()
                }
            }
        })
    }
}

struct PresentAppView_Previews: PreviewProvider {
    static var previews: some View {
        PresentAppView()
    }
}
