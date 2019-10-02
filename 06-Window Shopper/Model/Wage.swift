//
//  Wage.swift
//  06-Window Shopper
//
//  Created by Hector Delgado on 10/1/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
