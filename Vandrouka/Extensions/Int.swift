//
//  Int.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 21.01.23.
//

import Foundation

extension Int {
    func toString() -> String {
        return "\(self)"
    }
}

extension Int? {
    var safelyUnwrap: Int {
        return self ?? 0
    }
}
