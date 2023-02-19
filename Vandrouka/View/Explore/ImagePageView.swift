//
//  ImagePageView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import SwiftUI

struct ImagePageView: View {
    var images: [ImagePlace]
    
    var body: some View {
        ZStack {
            TabView {
                ForEach(images) { image in
                    Image(image.image)
                        .resizable()
                        .cornerRadius(20)
                        .aspectRatio(contentMode: .fill)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
        }
    }
}

let imagesSample = [ImagePlace(image: "camping1"),
                    ImagePlace(image: "camping2")]

struct ImagePageView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePageView(images: imagesSample)
    }
}
