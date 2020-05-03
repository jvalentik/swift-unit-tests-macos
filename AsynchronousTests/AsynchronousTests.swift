//
//  AsynchronousTests.swift
//  AsynchronousTests
//
//  Created by Jan Valentik on 30/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import XCTest
@testable import First

class AsynchronousTests: XCTestCase {

    func testPrimesUpTo100ShouldBe25() {
        // given
        let maximumCount = 100
        let expectation = XCTestExpectation (description: "Calculate primes up to \(maximumCount)")

        // when
        PrimeCalculator.calculate(upTo : maximumCount) {
            XCTAssertEqual($0.count , 25)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
}
