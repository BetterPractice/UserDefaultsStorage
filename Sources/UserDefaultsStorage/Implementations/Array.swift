//
//  Array.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Array: UserDefaultsStorable where Element: UserDefaultsStorable {

    public init?(storedValue: [Element.StoredDataType]) {
        self = storedValue.compactMap { Element(storedValue: $0) }
    }
    
    public var storedValue: [Element.StoredDataType] {
        compactMap { $0.storedValue }
    }
}

extension Array {
    
    public init(length: Int, generator: (Int) -> Element) {
        var result: [Element] = []
        for index in 0..<length {
            result.append(generator(index))
        }
        self = result
    }
}
