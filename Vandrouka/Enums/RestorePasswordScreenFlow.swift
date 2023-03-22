//
//  RestorePasswordFlow.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 22.03.23.
//

import Foundation

enum RestorePasswordScreenFlow: Hashable {
    case sendCode
    case enterCode
    case resetPassword
}
