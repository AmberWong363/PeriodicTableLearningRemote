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
                                // G2
                                Element("Helium", aNum: 2, aMass: 4, symbol: "He", color: Color.nonMetColor, group: 2, period: 1),
                                Element("Beryllium", aNum: 4, aMass: 9.01, symbol: "Be", color: Color.alkalineColor, group: 2, period: 2),
                                Element("Magnesium", aNum: 12, aMass: 24.31, symbol: "Mg", color: Color.alkalineColor, group: 2, period: 3),
                                Element("Calcium", aNum: 20, aMass: 40.08, symbol: "Ca", color: Color.alkalineColor, group: 2, period: 4),
                                Element("Strontium", aNum: 38, aMass: 87.62, symbol: "Sr", color: Color.alkalineColor, group: 2, period: 5),
                                Element("Barium", aNum: 56, aMass: 137.33, symbol: "Ba", color: Color.alkalineColor, group: 2, period: 6),
                                Element("Radium", aNum: 88, aMass: 226, symbol: "Ra", color: Color.alkalineColor, group: 2, period: 7),
                                // G13
                                Element("Boron", aNum: 5, aMass: 10.81, symbol: "B", color: Color.metalloidColor, group: 13, period: 2),
                                Element("Aluminium", aNum: 13, aMass: 26.98, symbol: "Al", color: Color.metalColor, group: 13, period: 3),
                                Element("Gallium", aNum: 31, aMass: 69.72, symbol: "Ga", color: Color.metalColor, group: 13, period: 4),
                                Element("Indium", aNum: 49, aMass: 114.82, symbol: "In", color: Color.metalColor, group: 13, period: 5),
                                Element("Thallium", aNum: 81, aMass: 204.38, symbol: "Tl", color: Color.metalColor, group: 13, period: 6),
                                Element("Nihonium", aNum: 113, aMass: 286, symbol: "Nh", color: Color.metalColor, group: 13, period: 7),
                                // G14
                                Element("Carbon", aNum: 6, aMass: 12.01, symbol: "C", color: Color.nonMetColor, group: 14, period: 2),
                                Element("Silicon", aNum: 14, aMass: 28.09, symbol: "Si", color: Color.metalloidColor, group: 14, period: 3),
                                Element("Germanium", aNum: 32, aMass: 72.63, symbol: "Ge", color: Color.metalloidColor, group: 14, period: 4),
                                Element("Tin", aNum: 50, aMass: 118.71, symbol: "Sn", color: Color.metalColor, group: 14, period: 5),
                                Element("Lead", aNum: 82, aMass: 207.2, symbol: "Pb", color: Color.metalColor, group: 14, period: 6),
                                Element("Flerovium", aNum: 114, aMass: 289, symbol: "Fl", color: Color.metalColor, group: 14, period: 7),
                                // G15
                                Element("Nitrogen", aNum: 7, aMass: 14.01, symbol: "N", color: Color.nonMetColor, group: 15, period: 2),
                                Element("Phosphorus", aNum: 15, aMass: 30.97, symbol: "P", color: Color.nonMetColor, group: 15, period: 3),
                                Element("Arsenic", aNum: 33, aMass: 74.92, symbol: "As", color: Color.metalloidColor, group: 15, period: 4),
                                Element("Antimony", aNum: 51, aMass: 121.76, symbol: "Sb", color: Color.metalloidColor, group: 15, period: 5),
                                Element("Bismuth", aNum: 83, aMass: 208.98, symbol: "Bi", color: Color.metalColor, group: 15, period: 6),
                                Element("Moscovium", aNum: 115, aMass: 290, symbol: "Mc", color: Color.metalColor, group: 15, period: 7),
                                // G16
                                Element("Oxygen", aNum: 8, aMass: 15.99, symbol: "O", color: Color.nonMetColor, group: 16, period: 2),
                                Element("Sulfur", aNum: 16, aMass: 32.06, symbol: "S", color: Color.nonMetColor, group: 16, period: 3),
                                Element("Selenium", aNum: 34, aMass: 78.97, symbol: "Se", color: Color.nonMetColor, group: 16, period: 4),
                                Element("Tellurium", aNum: 52, aMass: 127.60, symbol: "Te", color: Color.metalloidColor, group: 16, period: 5),
                                Element("Polonium", aNum: 84, aMass: 209, symbol: "Po", color: Color.metalColor, group: 16, period: 6),
                                Element("Livermorium", aNum: 116, aMass: 293, symbol: "Lv", color: Color.metalColor, group: 16, period: 7),
                                // G17
                                Element("Fluorine", aNum: 9, aMass: 19.00, symbol: "F", color: Color.nonMetColor, group: 17, period: 2),
                                Element("Chlorine", aNum: 17, aMass: 35.45, symbol: "Cl", color: Color.nonMetColor, group: 17, period: 3),
                                Element("Bromine", aNum: 35, aMass: 79.90, symbol: "Br", color: Color.nonMetColor, group: 17, period: 4),
                                Element("Iodine", aNum: 53, aMass: 126.90, symbol: "I", color: Color.nonMetColor, group: 17, period: 5),
                                Element("Astatine", aNum: 85, aMass: 210, symbol: "At", color: Color.metalloidColor, group: 17, period: 6),
                                Element("Tennessine", aNum: 117, aMass: 294, symbol: "Ts", color: Color.metalColor, group: 17, period: 7),
                                // G18
                                Element("Neon", aNum: 10, aMass: 20.18, symbol: "Ne", color: Color.nobleColor, group: 18, period: 2),
                                Element("Argon", aNum: 18, aMass: 39.95, symbol: "Ar", color: Color.nobleColor, group: 18, period: 3),
                                Element("Krypton", aNum: 36, aMass: 83.80, symbol: "Kr", color: Color.nobleColor, group: 18, period: 4),
                                Element("Xenon", aNum: 54, aMass: 131.29, symbol: "Xe", color: Color.nobleColor, group: 18, period: 5),
                                Element("Radon", aNum: 86, aMass: 222, symbol: "Rn", color: Color.nobleColor, group: 18, period: 6),
                                Element("Oganesson", aNum: 118, aMass: 294, symbol: "Og", color: Color.metalColor, group: 18, period: 7)]) {
        self.list = list
    }
}
