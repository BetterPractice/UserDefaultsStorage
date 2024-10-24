//
//  UserDefaultsStoredOptional.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

@propertyWrapper
public struct UserDefaultsStoredOptional<DataType: UserDefaultsStorable> {
    
    let key: String
    let userDefaults: UserDefaults
    
    public init(key: String, userDefaults: UserDefaults = .standard) {
        self.key = key
        self.userDefaults = userDefaults
    }
    
    public var wrappedValue: DataType? {
        get {
            return userDefaults[key]
        }
        set {
            userDefaults[key] = newValue
            
            
        }
    }

}
