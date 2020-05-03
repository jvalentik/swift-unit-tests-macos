//
//  Hater.swift
//  First
//
//  Created by Jan Valentik on 15/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false

    mutating func hadABadDay() {
        hating = true
    }

    mutating func hadAGoodDay() {
        hating = false
    }
}
