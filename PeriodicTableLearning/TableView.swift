//
//  TableView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct TableView: View {
    
    @Binding var eList : [Element]
    
    var body: some View {
       
        VStack {
            HStack {
                ElementButton(element: $eList[0])
                ElementButton(element: $eList[1])
            }
            HStack {
                ElementButton(element: $eList[2])
                ElementButton(element: $eList[3])
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(eList: Binding.constant(ElementList().list))
    }
}
