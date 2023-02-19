//
//  ImageModel.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.02.23.
//

import Foundation
import _PhotosUI_SwiftUI

class ImageModel: ObservableObject {
    
    enum ImageState {
        case empty(UIImage?), loading(Progress), success(UIImage), failure(Error)
    }
    
    @Published var imageState: ImageState
    
    @Published var imageSelection: PhotosPickerItem? {
        didSet {
            if let imageSelection {
                let progress = loadTransferable(from: imageSelection)
                imageState = .loading(progress)
            } else {
                imageState = .empty(nil)
            }
        }
    }
    
    init(imageState: ImageState) {
        self.imageState = imageState
    }
    
    private func loadTransferable(from imageSelection: PhotosPickerItem) -> Progress {
        return imageSelection.loadTransferable(type: Data.self, completionHandler: { result in
            DispatchQueue.main.async {
                guard imageSelection == self.imageSelection else { return }
                switch result {
                    case .success(let data?):
                        if let image = UIImage(data: data) {
                            self.imageState = .success(image)
                        } else {
                            self.imageState = .empty(nil)
                        }
                    case .success(nil):
                        self.imageState = .empty(nil)
                    case .failure(let error):
                        self.imageState = .failure(error)
                }
            }
        })
    }
}
