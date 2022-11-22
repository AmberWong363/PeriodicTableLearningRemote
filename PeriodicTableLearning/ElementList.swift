//
//  ElementList.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import Foundation

class ElementList: ObservableObject {
    var list : [Element]
    
    init (_ list : [Element] = [Element(), Element("Lithium", aNum: 3, aMass: 6.94, symbol: "Li"), Element("Sodium", aNum: 11, aMass: 22.99, symbol: "Na"), Element("Potassium", aNum: 19, aMass: 39.1, symbol: "K"), Element("Rubidium", aNum: 37, aMass: 85.47, symbol: "Rb"), Element("Cesium", aNum: 55, aMass: 132.9, symbol: "Cs"), Element("Francium", aNum: 87, aMass: 223, symbol: "Fr"), Element("Helium", aNum: 2, aMass: 4, symbol: "He"), Element("Beryllium", aNum: 4, aMass: 9.01, symbol: "Be"), Element("Magnesium", aNum: 12, aMass: 24.31, symbol: "Mg"), Element("Calcium", aNum: 20, aMass: 40.08, symbol: "Ca"), Element("Strontium", aNum: 38, aMass: 87.62, symbol: "Sr"), Element("Barium", aNum: 56, aMass: 137.33, symbol: "Ba"), Element("Radium", aNum: 88, aMass: 226, symbol: "Ra")]) {
        self.list = list
    }
}
