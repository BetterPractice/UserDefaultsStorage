//
//  Bool.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

extension Bool: UserDefaultsStorable {
    
    public init?(storedValue: Bool) {
        self = storedValue
    }
    
    public var storedValue: Bool {
        self
    }
}
