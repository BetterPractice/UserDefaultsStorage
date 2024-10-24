//
//  String.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension String: UserDefaultsStorable {
    
    public init?(storedValue: String) {
        self = storedValue
    }
    
    public var storedValue: String {
        return self
    }
}

extension String {
    public static func random(length: Int, from characters: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") -> Self {
        var result = ""
        for _ in 0..<length {
            result.append(characters.randomElement()!)
        }
        return result
    }
}
