//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Jan Valentik on 30/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import XCTest
@testable import First

class ThrowingTests: XCTestCase {

    func testPlayingBioBlitzThrows ( ) {
        let game = Game(name : "BioBlitz")
        do {
            try game.play()
            XCTFail()
        } catch GameError.notPurchased {
            // success!
        } catch {
            XCTFail()
        }
    }

    func testPlayingBlastazapThrows() {
        let game = Game(name: "Blastazap")
        XCTAssertThrowsError(try game.play()) {
            error in XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }

    }
}
