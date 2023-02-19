//
//  DateFormats.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 21.01.23.
//

import Foundation

enum DateFormat: String {
    case yyyyMMddTHHmmss = "yyyy-MM-dd'T'HH:mm:ss" //2020-08-10T17:54:50 AM = if 12h format
    case yyyyMMddTHHmmssZ = "yyyy-MM-dd'T'HH:mm:ssZ" //2020-08-10T17:54:50+0000
    case yyyyMMddTHHmmssSSS = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    case yyyyMMddTHHmmssSSSZ = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'" // 2021-06-11T09:11:44.000Z
    case HHmm = "HH:mm" // 09:11
    case HHmmss = "HH:mm:ss" // 09:11:44
    case YYMMMd = "YY, MMM d" // 21, Jun 11
    case MMMddYYYY = "MMM dd, YYYY" // Jun 11, 2021
    case MMMMddYYYY = "MMMM dd, YYYY" // December 11, 2021
    case MMMddYY = "MMM dd, YY" // Jun 11, 21
    case MMddyyyy = "MM/dd/yyyy" // 06/11/2021
    case MMddyy = "MM/dd/yy" // 06/11/21
    case ddMMyyyy = "dd/MM/yyyy" // 16/11/2021
    case hhmm = "hh:mm"
    case hhmma = "hh:mm a" // 09:11 AM
    case YYYYMMdd = "YYYY-MM-dd"
    case yyyyXXXX = "YYYY'XXXX"
    case dd_MM_yyyy = "dd-MM-yyyy" // 06-11-2021
    case yyyy_mm_dd = "yyyy-MM-dd"
    case ddMMyy = "dd/MM/yy"
    case MMM_d = "MMM d"
    case d = "d"
    case EEEE = "EEEE"
    case MMMM = "MMMM "
    case ddMMYY = "dd.MM.YY"
    case ddMMMMYYYYDDDD = "dd MMMM YYYY, EEEE"
}

enum AMSymbol: String {
    case AM = "AM"
    case am = "am"
    case amDot = "a.m."
    case null = ""
}

enum PMSymbol: String {
    case PM = "PM"
    case pm = "pm"
    case pmDot = "p.m."
    case null = ""
}
