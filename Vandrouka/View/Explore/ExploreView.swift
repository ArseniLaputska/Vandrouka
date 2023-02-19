//
//  ExploreView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var places = [
        Places(images: [ImagePlace(image: "camping1"), ImagePlace(image: "camping2")], placeName: "Camping at Narach", description: "Take inspiration & peace", fullDescription: "Beatiful place to became more closer with nature and take new inspiration on your life.", price: 200, rating: 4.9, isFavourite: false, latitude: 54.865700, longitude: 26.720008, category: .camping),
        Places(images: [ImagePlace(image: "apartment1"), ImagePlace(image: "apartment2"), ImagePlace(image: "apartment3")], placeName: "Apartment in New York", description: "Best view in the city", fullDescription: "Take a full from visiting one of the excited places in the world", price: 500, rating: 5.0, isFavourite: true, latitude: 40.711331, longitude: -74.016893, category: .apartment)
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            List(places) { place in
                ExploreCellUIView(places: place)
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
            }
            Button(action: {
                
            }, label: {
                HStack {
                    Text("Map")
                    Image(systemName: "map.fill")
                }
                .padding(.vertical, 10.0)
                .padding(.horizontal, 15.0)
                .tint(.white)
                .background {
                    Color.black
                        .cornerRadius(20)
                }
            })
            .padding(.bottom, 25.0)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
