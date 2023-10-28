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
                                Element("Oganesson", aNum: 118, aMass: 294, symbol: "Og", color: Color.metalColor, group: 18, period: 7),
                                // G3
                                Element("Scandium", aNum: 21, aMass: 44.956, symbol: "Sc", color: Color.transMetColor, group: 3, period: 4),
                                Element("Yttrium", aNum: 39, aMass: 88.906, symbol: "Y", color: Color.transMetColor, group: 3, period: 5),
                                Element("Lanthium", aNum: 57, aMass: 138.91, symbol: "La", color: Color.laColor, group: 3, period: 6),
                                Element("Actinium", aNum: 89, aMass: 227, symbol: "Ac", color: Color.acColor, group: 3, period: 7),
                                // G4
                                Element("Titanium", aNum: 22, aMass: 47.867, symbol: "Ti", color: Color.transMetColor, group: 4, period: 4),
                                Element("Zirconium", aNum: 40, aMass: 91.224, symbol: "Zr", color: Color.transMetColor, group: 4, period: 5),
                                Element("Hafnium", aNum: 72, aMass: 178.49, symbol: "Hf", color: Color.transMetColor, group: 4, period: 6),
                                Element("Rutherfordium", aNum: 104, aMass: 267, symbol: "Rf", color: Color.transMetColor, group: 4, period: 7),
                                // G5
                                Element("Vanadium", aNum: 23, aMass: 50.942, symbol: "V", color: Color.transMetColor, group: 5, period: 4),
                                Element("Niobium", aNum: 41, aMass: 92.906, symbol: "Nb", color: Color.transMetColor, group: 5, period: 5),
                                Element("Tantalum", aNum: 73, aMass: 180.95, symbol: "Ta", color: Color.transMetColor, group: 5, period: 6),
                                Element("Dubnium", aNum: 105, aMass: 268, symbol: "Db", color: Color.transMetColor, group: 5, period: 7),
                                // G6
                                Element("Chromium", aNum: 24, aMass: 51.996, symbol: "Cr", color: Color.transMetColor, group: 6, period: 4),
                                Element("Molybdenum", aNum: 42, aMass: 95.95, symbol: "Mo", color: Color.transMetColor, group: 6, period: 5),
                                Element("Tungsten", aNum: 74, aMass: 183.84, symbol: "W", color: Color.transMetColor, group: 6, period: 6),
                                Element("Seaborgium", aNum: 106, aMass: 269, symbol: "Sg", color: Color.transMetColor, group: 6, period: 7),
                                // G7
                                Element("Manganese", aNum: 25, aMass: 54.938, symbol: "Mn", color: Color.transMetColor, group: 7, period: 4),
                                Element("Technectium", aNum: 43, aMass: 98, symbol: "Tc", color: Color.transMetColor, group: 7, period: 5),
                                Element("Rhenium", aNum: 75, aMass: 186.21, symbol: "Re", color: Color.transMetColor, group: 7, period: 6),
                                Element("Bohrium", aNum: 107, aMass: 270, symbol: "Bh", color: Color.transMetColor, group: 7, period: 7),
                                // G8
                                Element("Iron", aNum: 26, aMass: 55.845, symbol: "Fe", color: Color.transMetColor, group: 8, period: 4),
                                Element("Ruthenium", aNum: 44, aMass: 101.07, symbol: "Ru", color: Color.transMetColor, group: 8, period: 5),
                                Element("Osmium", aNum: 76, aMass: 190.23, symbol: "Os", color: Color.transMetColor, group: 8, period: 6),
                                Element("Hassium", aNum: 108, aMass: 277, symbol: "Hs", color: Color.transMetColor, group: 8, period: 7),
                                // G9
                                Element("Cobalt", aNum: 27, aMass: 58.933, symbol: "Co", color: Color.transMetColor, group: 9, period: 4),
                                Element("Rhodium", aNum: 45, aMass: 102.91, symbol: "Rh", color: Color.transMetColor, group: 9, period: 5),
                                Element("Iridium", aNum: 77, aMass: 192.22, symbol: "Ir", color: Color.transMetColor, group: 9, period: 6),
                                Element("Meitnerium", aNum: 109, aMass: 278, symbol: "Mt", color: Color.transMetColor, group: 9, period: 7),
                                // G10
                                Element("Nickel", aNum: 28, aMass: 58.693, symbol: "Ni", color: Color.transMetColor, group: 10, period: 4),
                                Element("Palladium", aNum: 46, aMass: 106.42, symbol: "Pd", color: Color.transMetColor, group: 10, period: 5),
                                Element("Platinum", aNum: 78, aMass: 195.08, symbol: "Pt", color: Color.transMetColor, group: 10, period: 6),
                                Element("Damstadtium", aNum: 110, aMass: 281, symbol: "Ds", color: Color.transMetColor, group: 10, period: 7),
                                // G11
                                Element("Copper", aNum: 29, aMass: 63.546, symbol: "Cu", color: Color.transMetColor, group: 11, period: 4),
                                Element("Silver", aNum: 47, aMass: 107.87, symbol: "Ag", color: Color.transMetColor, group: 11, period: 5),
                                Element("Gold", aNum: 79, aMass: 196.97, symbol: "Au", color: Color.transMetColor, group: 11, period: 6),
                                Element("Roentgenium", aNum: 111, aMass: 282, symbol: "Rg", color: Color.transMetColor, group: 11, period: 7),
                                // G12
                                Element("Zinc", aNum: 30, aMass: 65.38, symbol: "Zn", color: Color.transMetColor, group: 12, period: 4),
                                Element("Cadmium", aNum: 48, aMass: 112.41, symbol: "Cd", color: Color.transMetColor, group: 12, period: 5),
                                Element("Mercury", aNum: 80, aMass: 200.59, symbol: "Hg", color: Color.transMetColor, group: 12, period: 6),
                                Element("Copernecium", aNum: 112, aMass: 285, symbol: "Cn", color: Color.transMetColor, group: 12, period: 7),
    ]) {
        self.list = list
    }
}
