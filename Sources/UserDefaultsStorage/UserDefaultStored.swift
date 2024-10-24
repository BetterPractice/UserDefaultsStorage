//
//  UserDefaultStored.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

@propertyWrapper
public struct UserDefaultsStored<DataType: UserDefaultsStorable> {
    
    let key: String
    let userDefaults: UserDefaults
    let defaultValue: DataType
    
    public init(key: String, userDefaults: UserDefaults = .standard, defaultValue: DataType) {
        self.key = key
        self.userDefaults = userDefaults
        self.defaultValue = defaultValue
    }
    
    public var wrappedValue: DataType {
        get {
            return userDefaults[key] ?? defaultValue
        }
        set {
            userDefaults[key] = newValue
        }
    }
}
