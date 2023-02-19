//
//  ExploreCellUIView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import SwiftUI

struct ExploreCellUIView: View {
    @State var places: Places
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                ImagePageView(images: places.images)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .frame(width: 350, height: 300)
                    .background(Color.clear)
                Button(action: {
                    places.isFavourite = !places.isFavourite
                }, label: {
                    Image(systemName: places.isFavourite ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding([.top, .trailing], 20.0)
                })
                .foregroundColor(.red)
            }
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(places.placeName)
                        .fontWeight(.bold)
                    HStack {
                        Text(places.rating.description)
                        Image(systemName: "star.fill")
                    }
                }
                Text(places.description)
                    .fontWeight(.light)
                    .padding(.top, -5.0)
                Text("\(Text("$" + places.price.description).bold()) \(Text("per night").fontWeight(.light))")
            }
        }
        .buttonStyle(.plain)
    }
}

let samplePlace = Places(images: [ImagePlace(image: "camping1"), ImagePlace(image: "camping2")], placeName: "Apartment in New York", description: "Best view in the city", fullDescription: "Take a full from visiting one of the excited places in the world", price: 500, rating: 5.0, isFavourite: true, latitude: 40.711331, longitude: -74.016893, category: .apartment)

struct ExploreCellUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreCellUIView(places: samplePlace)
    }
}
