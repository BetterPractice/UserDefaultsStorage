//
//  Data.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Data: UserDefaultsStorable {
    
    public init?(storedValue: Data) {
        self = storedValue
    }
    
    public var storedValue: Data {
        return self
    }
}
