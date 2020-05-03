//
//  Converter.swift
//  First
//
//  Created by Jan Valentik on 15/04/2020.
//  Copyright © 2020 IBM. All rights reserved.
//

import Foundation
class Converter {
    func convertToCelsius ( fahrenheit : Double ) -> Double {
        let fahrenheit = Measurement ( value : fahrenheit , unit : UnitTemperature . fahrenheit )
        let celsius = fahrenheit . converted ( to : . celsius )
        return celsius . value
    }

}
