//
//  TimeInterval+format.swift
//  Weather Gift App
//
//  Created by Victoria LePore on 4/1/18.
//  Copyright © 2018 Victoria LePore. All rights reserved.
//

import Foundation

extension TimeInterval {
    
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
    
}

