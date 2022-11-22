//
//  ElementList.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import Foundation

class ElementList: ObservableObject {
    var list : [Element]
    
    init (_ list : [Element] = [Element(), Element("Lithium", aNum: 3, aMass: 6.94, symbol: "Li"), Element("Sodium", aNum: 11, aMass: 22.99, symbol: "Na"), Element("Potassium", aNum: 19, aMass: 39.1, symbol: "K"), Element("Rubidium", aNum: 37, aMass: 85.47, symbol: "Rb"), Element("Cesium", aNum: 55, aMass: 132.9, symbol: "Cs"), Element("Francium", aNum: 87, aMass: 223, symbol: "Fr")]) {
        self.list = list
    }
}
