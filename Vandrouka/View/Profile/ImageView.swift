//
//  ImageView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.02.23.
//

import SwiftUI
import PhotosUI

struct ImageView: View {
    
    @ObservedObject var viewModel: ImageModel = ImageModel(imageState: .empty(nil))
    
    var body: some View {
        ProfileImage(imageState: viewModel.imageState)
            .overlay(alignment: .bottomTrailing) {
                PhotosPicker(selection: $viewModel.imageSelection, matching: .images, photoLibrary: .shared()) {
                    Image(systemName: "pencil.circle.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(.system(size: 30))
                        .foregroundColor(.accentColor)
                }
                .buttonStyle(.borderless)
            }
    }
}

struct ProfileImage: View {
    let imageState: ImageModel.ImageState
    
    var body: some View {
        switch imageState {
            case .empty(let image):
                if let image {
                    Image(uiImage: image)
                        .profileSettings()
                        .background {
                            Circle().fill(LinearGradient(colors: [.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                } else {
                    Image(systemName: "person.circle.fill")
                        .profileSettings()
                        .background {
                            Circle().fill(LinearGradient(colors: [.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                }
            case .loading:
                ProgressView()
            case .success(let image):
                Image(uiImage: image)
                    .profileSettings()
            case .failure:
                Image(systemName: "exclamationmark.triangle.fill")
                    .profileSettings()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
