//
//  Date.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Date: UserDefaultsStorable {
    
//    nonisolated(unsafe) public static var storableFormatter: ISO8601DateFormatter = ISO8601DateFormatter()
//    
//    public init?(storedValue: String) {
//        if let value = Self.storableFormatter.date(from: storedValue) {
//            self = value
//        } else {
//            return nil
//        }
//    }
//    
//    public var storedValue: String {
//        Self.storableFormatter.string(from: self)
//    }
    
    public init?(storedValue: Date) {
        self = storedValue
    }
    
    public var storedValue: Date {
        self
    }
}
