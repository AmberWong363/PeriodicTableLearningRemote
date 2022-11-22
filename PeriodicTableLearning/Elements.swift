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
    var color : Color
    
    init (_ name : String = "Hydrogen", aNum : Int = 1, aMass : Double = 1.01, symbol : String = "H", color : Color = Color.elementColor) {
        self.name = name
        self.aNum = aNum
        self.aMass = aMass
        self.symbol = symbol
        self.color = color
    }
}

extension Color {
    static let elementColor = Color("ElementColor")
    static let acColor = Color("Ac")
    static let alkaliColor = Color("Alkali")
    static let alkalineColor = Color("Alkaline")
    static let laColor = Color("La")
    static let metalloidColor = Color("Metalloid")
    static let metalColor = Color("Metals")
    static let nonMetColor = Color("NonMetals")
    static let transMetColor = Color("TransitionMetals")
}
