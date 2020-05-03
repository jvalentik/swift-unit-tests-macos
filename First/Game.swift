//
//  Game.swift
//  First
//
//  Created by Jan Valentik on 30/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import Foundation

enum GameError: Error {
    case notPurchased
    case notInstalled
    case parentalControlsDisallowed
}

struct Game {
    let name : String

    func play ( ) throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlsDisallowed
        } else {
            print ("\(name) is OK to play!")
        }
    }
}
