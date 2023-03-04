//
//  ExploreCellUIView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import SwiftUI

struct ExploreCellUIView: View {
    @State var place: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                ImagePageView(images: place.images)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .frame(width: 350, height: 300)
                    .background(Color.clear)
                Button(action: {
                    place.isFavourite = !place.isFavourite
                }, label: {
                    Image(systemName: place.isFavourite ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding([.top, .trailing], 20.0)
                })
                .foregroundColor(.red)
            }
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(place.name)
                        .fontWeight(.bold)
                }
                Text(place.description)
                    .fontWeight(.light)
                    .padding(.top, -5.0)
            }
        }
        .buttonStyle(.plain)
    }
}

let samplePlace = Place(images: [ImagePlace(image: "niasvizh1"), ImagePlace(image: "niasvizh2")], name: "Niasviż Castle", description: "Great castle at Niasviž", fullDescription: "Is a residential castle of the Radziwiłł family in Niasviž, Belarus. Built in the 16th and 17th centuries, and maintained by the Radziwiłł family until 1939", isFavourite: false, latitude: 53.222634, longitude: 26.692562, category: .castle)

struct ExploreCellUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreCellUIView(place: samplePlace)
    }
}
