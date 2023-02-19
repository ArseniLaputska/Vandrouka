//
//  SwiftUIView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 12.01.23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var showView = false
        
    var body: some View {
        VStack(spacing: 20.0) {
            ImageView()
                .padding(.top, 20.0)
            VStack {
                Text("My Profile Name")
                    .font(.largeTitle)
                    .bold()
                VStack(spacing: 20) {
                    Button("Edit Profile", action: {
                        showView.toggle()
                        print("Open edit screen")
                    })
                    .foregroundColor(.red)
                    .sheet(isPresented: $showView, content: {
                        EditView()
                    })
                    Text("Enjoy helping people with their travels. Runner, soccer, player, programmer, startup entepreneur and run custom software company to help tie it all together!")
                        .font(.caption)
                        .padding(.horizontal, 15.0)
                }
            }
            HStack(spacing: 20) {
                VStack(spacing: 5) {
                    Text("Languages")
                        .foregroundColor(.red)
                        .font(.subheadline)
                    Text("Belarusian, English")
                        .font(.subheadline)
                }
                VStack(spacing: 5) {
                    Text("Location")
                        .foregroundColor(.red)
                        .font(.subheadline)
                    Text("New York, NY")
                        .font(.subheadline)
                }
                VStack(spacing: 5) {
                    Text("Member since")
                        .foregroundColor(.red)
                        .font(.subheadline)
                    Text("January 2023")
                        .font(.subheadline)
                }
            }
            .padding(15)
            Spacer()
        }
    }
}

struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
