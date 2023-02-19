//
//  EditView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 12.01.23.
//

import SwiftUI

struct EditView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    private var profileDetails = Profile(name: "John Dory", bio: "Enjoy helping people with their travels. Runner, soccer, player, programmer, startup entepreneur and run custom software company to help tie it all together!", location: "New York, NY", languages: "Belarusian, English", email: "johndory@gmail.com", birthDate: "09/12/1998", phone: 19542456332)
    
    @State var name: String = ""
    @State var bio: String = ""
    @State var location: String = ""
    @State var languages: String = ""
    @State var email = ""
    @State var phone = ""
    @State var birthDate = Date.now
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "x.circle")
                        .font(.title)
                }
                .padding(.leading, 15.0)
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Text("Done")
                    Image(systemName: "checkmark.circle")
                        .font(.title)
                }
                .padding(.trailing, 15.0)
            }
            Form {
                Section("Name") {
                    TextField("Name", text: $name)
                }
                Section("Bio") {
                    TextEditor(text: $bio)
                }
                Section("Location") {
                    TextField("Location", text: $location)
                }
                Section("Languages") {
                    TextField("Languages", text: $languages)
                }
                Section("Email") {
                    TextField("Email", text: $email)
                }
                Section("Phone") {
                    TextField("Phone", text: $phone)
                }
                Section("Birth date") {
                    DatePicker("Select Date", selection: $birthDate, in: ...Date.now, displayedComponents: .date)
                }
            }
            .cornerRadius(5)
            .shadow(radius: 5)
            .padding([.leading, .bottom, .trailing], 15.0)
            .onAppear {
                setupProperties()
            }
        }
    }
    
    private func setupProperties() {
        name = profileDetails.name
        bio = profileDetails.bio
        location = profileDetails.location
        languages = profileDetails.languages
        email = profileDetails.email
        phone = "+" + profileDetails.phone.toString()
        birthDate = profileDetails.birthDate.toDate(with: .MMddyyyy)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
