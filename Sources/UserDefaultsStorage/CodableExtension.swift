//
//  Codable.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension UserDefaultsStorable where Self: Codable {
    
    public init?(storedValue: Data?) {
        if let storedValue, let value = try? JSONDecoder().decode(Self.self, from: storedValue) {
            self = value
        } else {
            return nil
        }
    }
    
    public var storedValue: Data? {
        let encoder = JSONEncoder()
        let data = try? encoder.encode(self)
        return data
    }
}
