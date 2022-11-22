//
//  Elements.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import Foundation
import SwiftUI

class Element : Identifiable, ObservableObject {
    @Published var name : String
    @Published var aNum : Int
    @Published var aMass : Double
    @Published var symbol : String
    @Published var color : Color
    @Published var enabled : Bool
    @Published var group : Int
    @Published var period : Int
    let id = UUID()
    
    func toggle() {
        enabled.toggle()
        objectWillChange.send()
    }
    
    init (_ name : String = "Hydrogen", aNum : Int = 1, aMass : Double = 1.01, symbol : String = "H", color : Color = Color.elementColor, enabled : Bool = true, group : Int = 1, period : Int = 1) {
        self.name = name
        self.aNum = aNum
        self.aMass = aMass
        self.symbol = symbol
        self.color = color
        self.enabled = enabled
        self.group = group
        self.period = period
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
    static let disabledColor = Color("Disabled")
}
