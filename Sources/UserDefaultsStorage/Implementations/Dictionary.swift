//
//  Dictionary.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Dictionary: UserDefaultsStorable where Key == String, Value: UserDefaultsStorable {
    
    public init?(storedValue: [String: Value.StoredDataType]) {
        self = storedValue.compactMapValues { Value.init(storedValue: $0) }
    }
    
    public var storedValue: [String: Value.StoredDataType] {
        compactMapValues { $0.storedValue }
    }
}

extension Dictionary where Key == String {
    
    public init(size: Int, generator: (Int) -> (key: Key, value: Value)) {
        var result: [Key: Value] = [:]
        
        for index in 0..<size {
            let (key, value) = generator(index)
            result[key] = value
        }
        self = result
    }
}
