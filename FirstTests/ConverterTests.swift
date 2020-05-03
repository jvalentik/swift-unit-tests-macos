//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Jan Valentik on 15/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import XCTest
@testable import First

class ConverterTests: XCTestCase {
    var sut: Converter!

    override func setUp() {
        sut = Converter()
    }

    override func tearDown() {
        sut = nil
    }


    func test32FahrenheitIsZeroCelsius() {
        // Given
        let input = 32.0

        // When
        let output = sut.convertToCelsius(fahrenheit: input)

        // Then
        XCTAssertEqual(output, 0, accuracy : 0.000001)

    }

    func test212FahrenheitIs100Celsius() {
        // Given
        let input = 212.0

        // When
        let output = sut.convertToCelsius(fahrenheit: input)

        // Then
        XCTAssertEqual(output, 100, accuracy : 0.000001)
    }

}
