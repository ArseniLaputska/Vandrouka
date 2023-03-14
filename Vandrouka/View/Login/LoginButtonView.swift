//
//  LoginButtonView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 13.03.23.
//

import SwiftUI

struct LoginLink<Register: View, SignIn: View>: View {
    
    @ViewBuilder var signIn: () -> Register
    @ViewBuilder var register: () -> SignIn
    
    var body: some View {
        HStack(spacing: 0) {
            LoginNavigationLink(destination: {
                register()
            }, title: "Register", isSignIn: false)
            
            LoginNavigationLink(destination: {
                signIn()
            }, title: "Sign In", isSignIn: true)
        }
    }
}

struct LoginNavigationLink<Destination: View>: View {
    
    @ViewBuilder var destination: () -> Destination
    
    var title: String
    var isSignIn: Bool
    
    var body: some View {
        NavigationLink(destination: destination(), label: {
            LoginButtonView(title: title, isSignIn: isSignIn)
        })
        .navigationLinkStyle()
    }
}

struct LoginButtonView: View {
    
    var title: String
    var isSignIn: Bool
    
    var body: some View {
        ZStack {
            isSignIn ? Color("grayButton") : Color.white
            Text(title)
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white, lineWidth: 1)
        )
    }
    
}
