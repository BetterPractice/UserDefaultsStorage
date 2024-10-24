//
//  SerializationExtensionTests.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Testing
import Foundation
import UserDefaultsStorage

struct SerializationExtensionTests {
    
    let defaults = UserDefaults.standard
    
    func genericTest<T: UserDefaultsStorable & Equatable>(key: String, iterations: Int = 1_000, generator: (Int) -> T) throws {
        for index in 0..<iterations {
            let initial = generator(index)
            defaults[key] = initial
            
            let fetched: T? = defaults[key]
            #expect(initial == fetched)
        }
        
        // Cleanup after
        defaults.delete(key: key)
    }
    
    @Test
    func boolSerialization() throws {
        let key = "boolKey"
        
        try genericTest(key: key) { _ in
            Bool.random()
        }
    }
    
    @Test
    func intSerialization() throws {
        let key = "intKey"

        try genericTest(key: key) { _ in
            Int.random(in: 0..<100)
        }
    }
    
    @Test
    func floatSerialization() throws {
        let key = "floatKey"
        
        try genericTest(key: key) { _ in
            Float.random(in: 0..<100)
        }
    }
    
    @Test
    func doubleSerialization() throws {
        let key = "doubleKey"

        try genericTest(key: key) { _ in
            Double.random(in: 0..<100)
        }
    }
    
    @Test
    func decimalSerialization() throws {
        let key = "decimalKey"
        
        try genericTest(key: key) { _ in
            Decimal.random(in: 0..<100)
        }

    }
    
    @Test
    func enumSerialization() throws {
        enum TestEnum: String, UserDefaultsStorable, CaseIterable {
            case first = "first"
            case second = "second"
            case third = "third"
            case fourth = "fourth"
        }
        
        let key = "enumKey"
        
        try genericTest(key: key) { _ in
            TestEnum.allCases.randomElement()!
        }
    }
    
    @Test
    func stringSerialization() throws {
        let key = "stringKey"
        
        try genericTest(key: key) { _ in
            String.random(length: 20)
        }
    }
    
    @Test
    func arraySerialization() throws {
        let key = "arrayKey"

        try genericTest(key: key) { _ in
            Array(length: 10) { _ in
                String.random(length: 10)
            }
        }
    }

    @Test
    func dictionarySerialization() throws {
        let key = "dictionaryKey"

        try genericTest(key: key) { _ in
            Dictionary(size: 10) { _ in
                (key: String.random(length: 10), value: String.random(length: 10))
            }
        }
    }

    @Test
    func urlSerialization() throws {
        let key = "urlKey"

        try genericTest(key: key) { _ in
            URL(string: "https://www.google.com/")!
        }
    }

    @Test
    func dateSerialization() throws {
        let key = "dateKey"

        try genericTest(key: key) { _ in
            Date.now.addingTimeInterval(-TimeInterval.random(in: 0..<(3600 * 24 * 365 * 10)))            
        }
    }

    @Test
    func dataSerialization() throws {
        let key = "dataKey"

        try genericTest(key: key) { _ in
            String.random(length: 30).data(using: .utf8)!
        }
    }

}
