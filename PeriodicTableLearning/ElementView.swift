//
//  ElementView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct ElementView: View {
    
    @Binding var element : Element
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(element.enabled ? element.color : Color.disabledColor)
                .cornerRadius(2)
            VStack {
                HStack {
                    Text("\(element.aNum)")
                        .padding(2)
                    Spacer()
                    Text(String(format: "%.2f", element.aMass))
                        .padding(2)
                }
                .padding(.horizontal, 2.0)
                Text("\(element.symbol)")
                    .font(Font.custom("hi", fixedSize: 20))
                Text("\(element.name)")
                    .padding(2)
            }
            .frame(width: 100, height: 100)
        }
    }
}
