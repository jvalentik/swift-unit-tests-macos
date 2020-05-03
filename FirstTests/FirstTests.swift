//
//  FirstTests.swift
//  FirstTests
//
//  Created by Jan Valentik on 15/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import XCTest
@testable import First

class FirstTests: XCTestCase {

    func testHaterStartsNicely() {
        // Given
        let hater = Hater()

        // Then
        XCTAssertFalse(hater.hating, "New Hater should not be hating")
    }

    func testHaterHatesAfterBadDay() {
        // Given
        var  hater = Hater()

        // When
        hater.hadABadDay()

        // Then
        XCTAssertTrue(hater.hating, "Hater should be hating after a bad day")
    }

    func testHaterHappyAfterGoodDay() {
        // Given
        var hater = Hater()

        // When
        hater.hadAGoodDay()

        // Then
        XCTAssertFalse(hater.hating, "Hater should not be hating after a good day")
    }
}
