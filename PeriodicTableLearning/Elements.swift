//
//  Elements.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import Foundation
import SwiftUI

class Element {
    var name : String
    var aNum : Int
    var aMass : Double
    var symbol : String
    
    init (_ name : String = "Hydrogen", aNum : Int = 1, aMass : Double = 1.01, symbol : String = "H") {
        self.name = name
        self.aNum = aNum
        self.aMass = aMass
        self.symbol = symbol
    }
}

extension Color {
    static let elementColor = Color("ElementColor")
}
