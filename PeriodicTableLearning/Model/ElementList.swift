//
//  ElementList.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import Foundation
import SwiftUI

class ElementList: ObservableObject {
    var list : [Element]
    
    init (_ list : [Element] = [
                                Element("Hydrogen", aNum: 1, aMass: 1.01, symbol: "H", color: Color.nonMetColor, group: 1, period: 1),
                                Element("Lithium", aNum: 3, aMass: 6.94, symbol: "Li", color: Color.alkaliColor, group: 1, period: 2),
                                Element("Sodium", aNum: 11, aMass: 22.99, symbol: "Na", color: Color.alkaliColor, group: 1, period: 3),
                                Element("Potassium", aNum: 19, aMass: 39.1, symbol: "K", color: Color.alkaliColor, group: 1, period: 4),
                                Element("Rubidium", aNum: 37, aMass: 85.47, symbol: "Rb", color: Color.alkaliColor, group: 1, period: 5),
                                Element("Cesium", aNum: 55, aMass: 132.9, symbol: "Cs", color: Color.alkaliColor, group: 1, period: 6),
                                Element("Francium", aNum: 87, aMass: 223, symbol: "Fr", color: Color.alkaliColor, group: 1, period: 7),
                                Element("Helium", aNum: 2, aMass: 4, symbol: "He", color: Color.nonMetColor, group: 2, period: 1),
                                Element("Beryllium", aNum: 4, aMass: 9.01, symbol: "Be", color: Color.alkalineColor, group: 2, period: 2),
                                Element("Magnesium", aNum: 12, aMass: 24.31, symbol: "Mg", color: Color.alkalineColor, group: 2, period: 3),
                                Element("Calcium", aNum: 20, aMass: 40.08, symbol: "Ca", color: Color.alkalineColor, group: 2, period: 3),
                                Element("Strontium", aNum: 38, aMass: 87.62, symbol: "Sr", color: Color.alkalineColor, group: 2, period: 3),
                                Element("Barium", aNum: 56, aMass: 137.33, symbol: "Ba", color: Color.alkalineColor, group: 2, period: 3),
                                Element("Radium", aNum: 88, aMass: 226, symbol: "Ra", color: Color.alkalineColor, group: 2, period: 3)]) {
        self.list = list
    }
}
