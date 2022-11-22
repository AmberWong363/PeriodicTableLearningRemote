//
//  TableView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct TableView: View {
    
    @Binding var eList : [Element]
    @Binding var dList : Set<Element>
    @State var color : [Color] = [Color.nonMetColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.nonMetColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ForEach(0..<7) {i in
                        Button {
                            eList[i].toggle()
                            if eList[i].enabled {
                                color[i] = eList[i].color
                            } else {
                                color[i] = Color.disabledColor
                            }
                            
                            if dList.contains(eList[i]) && eList[i].enabled {
                                dList.remove(eList[i])
                            } else if !dList.contains(eList[i]) && !eList[i].enabled {
                                dList.insert(eList[i])
                            }
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(color[i])
                                    .cornerRadius(2)
                                ElementSmallView(element: $eList[i])
                            }
                        }
                        .buttonStyle(.plain)
                    }
                    Spacer()
                }
                
                VStack {
                    ForEach(7..<14) {i in
                        Button {
                            eList[i].toggle()
                            if eList[i].enabled {
                                color[i] = eList[i].color
                            } else {
                                color[i] = Color.disabledColor
                            }
                            
                            if dList.contains(eList[i]) && eList[i].enabled {
                                dList.remove(eList[i])
                            } else if !dList.contains(eList[i]) && !eList[i].enabled {
                                dList.insert(eList[i])
                            }
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(color[i])
                                    .cornerRadius(2)
                                ElementSmallView(element: $eList[i])
                            }
                        }
                        .buttonStyle(.plain)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(eList: Binding.constant(ElementList().list), dList: Binding.constant([]))
    }
}
