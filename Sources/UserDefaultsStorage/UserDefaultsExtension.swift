//
//  UserDefaultsExtension.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension UserDefaults {
    
    public func save<DataType: UserDefaultsStorable>(_ value: DataType, for key: String) {
        self.set(value.storedValue, forKey: key)
    }
    
    public func delete(key: String) {
        self.removeObject(forKey: key)
    }
    
    public func fetch<DataType: UserDefaultsStorable>(key: String) -> DataType? {
        let storedValue = self.object(forKey: key)
        
        guard let storedValue = storedValue as? DataType.StoredDataType else {
            return nil
        }
        
        return DataType(storedValue: storedValue)
    }
    
    public func registerDefault<DataType: UserDefaultsStorable>(_ value: DataType, for key: String) {
        register(defaults: [key: value.storedValue])
    }
    
    public subscript<DataType: UserDefaultsStorable>(key: String) -> DataType? {
        get {
            return fetch(key: key)
        }
        set {
            if let newValue {
                save(newValue, for: key)
            } else {
                delete(key: key)
            }
        }
    }
}
