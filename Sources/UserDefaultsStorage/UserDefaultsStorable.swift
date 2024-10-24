//
//  UserDefaultsStorable.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

public protocol UserDefaultsStorable {
    associatedtype StoredDataType
    
    init?(storedValue: StoredDataType)
    
    var storedValue: StoredDataType { get }
}
