//
//  Url.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension URL: UserDefaultsStorable {
    
    public init?(storedValue: String) {
        if let value = URL(string: storedValue) {
            self = value
        } else {
            return nil
        }
    }
    
    public var storedValue: String {
        return absoluteString
    }
}
