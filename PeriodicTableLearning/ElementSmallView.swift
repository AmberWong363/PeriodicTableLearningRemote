//
//  ElementSmallView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct ElementSmallView: View {
    
    @Binding var element : Element
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 40, height: 40)
                .foregroundColor(element.enabled ? element.color : Color.disabledColor)
                .cornerRadius(2)
            VStack {
                HStack {
                    Text("\(element.aNum)")
                        .font(Font.custom("i", fixedSize: 13))
                    Spacer()
                }
                .padding(.horizontal, 2.0)
                Text("\(element.symbol)")
                    .font(Font.custom("hi", fixedSize: 17))
                    .frame(width: 30, height: 18)
                    .padding(.vertical, 1.0)
                    
                
            }
            .frame(width: 40, height: 40)
        }
    }
}

struct ElementSmallView_Previews: PreviewProvider {
    static var previews: some View {
        ElementSmallView(element: Binding.constant(Element(aNum: 20, symbol: "Cs", enabled: false)))
    }
}
