//
//  MapAnnotationView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 2.03.23.
//

import SwiftUI

struct MapAnnotationView: View {
    @State var place: Place
    @State private var showDetails = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                DetailedAnnotaionView(place: place)
                    .frame(width: 150, height: 150)
                    .opacity(showDetails ? 1 : 0)
                
                place.symbol
                    .font(.largeTitle)
                    .foregroundColor(place.color)
                
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.caption)
                    .foregroundColor(place.color)
                    .offset(x: 0, y: -5)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                showDetails.toggle()
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        MapAnnotationView(place: samplePlace)
    }
}
