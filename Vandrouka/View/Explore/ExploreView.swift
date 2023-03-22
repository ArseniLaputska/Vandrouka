//
//  ExploreView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var places: [Place] = [
        Place(images: [ImagePlace(image: "niasvizh1"), ImagePlace(image: "niasvizh2")], name: "Niasviž Castle", description: "Great castle at Niasviž", fullDescription: "Is a residential castle of the Radziwiłł family in Niasviž, Belarus. Built in the 16th and 17th centuries, and maintained by the Radziwiłł family until 1939", isFavourite: false, latitude: 53.222634, longitude: 26.692562, category: .castle),
        Place(images: [ImagePlace(image: "church1"), ImagePlace(image: "church2")], name: "Kasciol Božaha Ciela", description: "Catholic church in the village of Bagushevichy", fullDescription: "The church was built in the middle of the 19th century. Until 1863, it was made of brick as the family burial ground of the owners of the Sventarzhecki manor in the center of the village, on the left bank of the Usa River (the territory of the ancient settlement). It was part of the manor and park ensemble.", isFavourite: true, latitude: 53.714629, longitude: 28.820114, category: .catholic)
    ]
    
    @State var selectedIndex: Int?
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .bottom) {
                
                VStack {
                    SegmentedControlView(selectedIndex: $selectedIndex, titles: PointCategory.allCases.map { $0.rawValue } )
                    
                    List(places) { place in
                        ExploreCellUIView(place: place)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                    }
                }
                
                NavigationLink(destination: {
                    MapView(places: places)
                }, label: {
                    HStack {
                        Text("Map")
                        Image(systemName: "map.fill")
                    }
                    .padding(.vertical, 10.0)
                    .padding(.horizontal, 15.0)
                    .foregroundColor(.white)
                    .background {
                        Color.black
                            .cornerRadius(20)
                    }
                })
                .padding(.bottom, 25.0)
                
            }
        }
    }
}

let samplePlaces = [
    Place(images: [ImagePlace(image: "niasvizh1"), ImagePlace(image: "niasvizh2")], name: "Niasviž Castle", description: "Great castle at Niasviž", fullDescription: "Is a residential castle of the Radziwiłł family in Niasviž, Belarus. Built in the 16th and 17th centuries, and maintained by the Radziwiłł family until 1939", isFavourite: false, latitude: 53.222634, longitude: 26.692562, category: .castle),
    Place(images: [ImagePlace(image: "church1"), ImagePlace(image: "church2")], name: "Kasciol Božaha Ciela", description: "Catholic church in the village of Bagushevichy", fullDescription: "The church was built in the middle of the 19th century. Until 1863, it was made of brick as the family burial ground of the owners of the Sventarzhecki manor in the center of the village, on the left bank of the Usa River (the territory of the ancient settlement). It was part of the manor and park ensemble.", isFavourite: true, latitude: 53.714629, longitude: 28.820114, category: .catholic)
]

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
