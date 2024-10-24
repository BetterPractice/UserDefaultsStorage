//
//  Int.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

extension Int: UserDefaultsStorable {
    
    public init?(storedValue: Int) {
        self = storedValue
    }
    
    public var storedValue: Int {
        return self
    }
}
