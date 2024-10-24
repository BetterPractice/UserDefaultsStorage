//
//  Double.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Double: UserDefaultsStorable {
    
    public init?(storedValue: Double) {
        self = storedValue
    }
    
    public var storedValue: Double {
        return self
    }
}
