//
//  Decimal.swift
//  UserDefaultsStorage
//
//  Created by Holly Schilling on 10/23/24.
//

import Foundation

extension Decimal: UserDefaultsStorable {
}

extension Decimal {
    
    public var doubleValue: Double {
        return (self as NSDecimalNumber).doubleValue
    }
    
    public static func random(in range: Range<Self>) -> Self {
        let doubleRange = Double(range.lowerBound.doubleValue)..<Double(range.upperBound.doubleValue)
        let chosenDouble = Double.random(in: doubleRange)
        return Decimal(floatLiteral: chosenDouble)
    }
}
