//
//  Settings.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong on 9/6/23.
//

import Foundation

class Settings : ObservableObject{
    @Published var options : [(String, Bool)]
    /*
     aNum
     molarMass
     name
     symbol
     */
    @Published var states : States
    
    init(_ options: [(String, Bool)] = [("Atomic Number", true), ("Molar Mass", true), ("Element Name", true), ("Atomic Symbol", false)], states : States = .symbol) {
        self.options = options
        self.states = states
    }
}

enum States {
    case aNum, molarMass, name, symbol
}
