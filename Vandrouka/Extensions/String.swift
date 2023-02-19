//
//  String.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 21.01.23.
//

import Foundation

extension String {
    func toDate(with format: DateFormat = .yyyyMMddTHHmmss, timeZone: TimeZone = TimeZone(abbreviation: "UTC") ?? TimeZone.current) -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
//        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.date(from: self) ?? Date()
    }
}
