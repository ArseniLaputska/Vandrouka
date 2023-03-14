//
//  SignInView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI
import AuthenticationServices

struct SignInView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ZStack {
            Color("whisper")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack {
                    Text("Hello Again!")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome back you've been missed!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                Spacer()
                
                VStack {
                    TextField("Enter username", text: $username)
                        .loginStyle()
                    
                    PasswordTextField(titleKey: "Password", text: $password)
                        .loginStyle()
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Recovery Password")
                            .bold()
                            .foregroundColor(.gray)
                            .font(.footnote)
                    })
                    .padding(.trailing, 20.0)
                }
                .padding(.bottom, 10.0)
                
                Button(action: {
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.bittersweet)
                        .cornerRadius(12)
                        .padding(.horizontal, 20.0)
                })
                
                HStack {
                    LinearGradient(gradient: Gradient(colors: [.white, .ghost, .gray, .black]), startPoint: .leading, endPoint: .trailing)
                        .frame(maxHeight: 1)
                    
                    Text("Or continue with")
                        .font(.caption)
                        .lineLimit(1)
                        .padding(.horizontal, 5)
                    
                    LinearGradient(gradient: Gradient(colors: [.white, .ghost, .black]), startPoint: .trailing, endPoint: .leading)
                        .frame(maxHeight: 1)
                }.padding()
                
                VStack {
                    SignInWithAppleButton(.continue, onRequest: { _ in
                        
                    }, onCompletion: { _ in
                        
                    })
                    .frame(maxHeight: 50)
                    .signInWithAppleButtonStyle(.black)
                    .cornerRadius(12)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack(spacing: 0) {
                            Image("googleLogo")
                            
                            Text("Continue with Google")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white)
                        }
                    })
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.green)
                    .cornerRadius(12)
                }
                .padding(.horizontal, 20.0)
                
                Spacer()
                
                HStack(spacing: 5) {
                    Text("Not a member?")
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Register now")
                    })
                }
                .padding(.bottom, 20.0)
            }
        }
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
