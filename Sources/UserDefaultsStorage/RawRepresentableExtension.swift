//
//  RawRepresentable.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension UserDefaultsStorable where Self: RawRepresentable, RawValue: UserDefaultsStorable {
    
    public init?(storedValue: RawValue.StoredDataType) {
        if let transformed = RawValue(storedValue: storedValue), let value = Self(rawValue: transformed) {
            self = value
        } else {
            return nil
        }
    }
    
    public var storedValue: RawValue.StoredDataType {
        return self.rawValue.storedValue
    }
}
