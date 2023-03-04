//
//  MapView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 2.03.23.
//

import SwiftUI
import CoreLocationUI
import MapKit

struct MapView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State var places: [Place]
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                Map(coordinateRegion: $locationManager.region, showsUserLocation: true, annotationItems: places) { place in
                    MapAnnotation(coordinate: place.coordinate, content: {
                        MapAnnotationView(place: place)
                    })
                }
                
                LocationButton {
                    locationManager.requestAuthorization()
                }
                .labelStyle(.iconOnly)
                .symbolVariant(.fill)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.bottom, 30)
                .padding(.trailing, 10)
            }
            .navigationTitle("Map")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(places: samplePlaces)
    }
}
