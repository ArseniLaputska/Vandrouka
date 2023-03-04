//
//  DetailedAnnotaionView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 2.03.23.
//

import SwiftUI

struct DetailedAnnotaionView: View {
    
    @State var place: Place
    
    var body: some View {
        VStack {
            Text(place.name)
            
            Image(place.images[0].image)
                .resizable()
                .cornerRadius(15)
            
            Button(action: {
                
            }, label: {
                Text("Show more")
                    .tint(.blue)
            })
        }
    }
}

struct DetailedAnnotaionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedAnnotaionView(place: samplePlace)
    }
}
