//
//  Float.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Float: UserDefaultsStorable {
    
    public init?(storedValue: Float) {
        self = storedValue
    }
    
    public var storedValue: Float {
        return self
    }
    
}
