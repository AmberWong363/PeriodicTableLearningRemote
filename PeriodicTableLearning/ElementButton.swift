//
//  ElementButton.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct ElementButton: View {
    
    @Binding var element : Element
    
    var body: some View {
        Button {
            element.toggle()
        } label: {
            ElementSmallView(element: $element)
                .buttonStyle(.plain)
        }
    }
}


