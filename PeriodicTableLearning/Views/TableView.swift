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
    @State var disabled : [Bool] = [false, false, false, false, false, false]
    @State var color : [Color] = [Color.nonMetColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.nonMetColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Button {
                        for i in 0..<7 {
                            if disabled[0] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
                            /*
                             Hmph, so much work. This is why you make things simple!
                             Would've much better as a worshipper for my greatness
                             */
                            
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
                        }
                        disabled[0].toggle()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.elementColor)
                                .cornerRadius(2)
                            VStack {
                                HStack {
                                    Text("")
                                        .font(Font.custom("i", fixedSize: 13))
                                    Spacer()
                                }
                                .padding(.horizontal, 2.0)
                                Text("G1")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
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
                }
                
                VStack {
                    
                    // Group disable button, Yatta it's so cute!
                    Button {
                        for i in 7..<14 {
                            if disabled[1] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
                            /*
                             Hmph, so much work. This is why you make things simple!
                             Would've much better as a worshipper for my greatness
                             */
                            
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
                        }
                        disabled[1].toggle()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.elementColor)
                                .cornerRadius(2)
                            VStack {
                                HStack {
                                    Text("")
                                        .font(Font.custom("i", fixedSize: 13))
                                    Spacer()
                                }
                                .padding(.horizontal, 2.0)
                                Text("G2")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
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
                }
            }
        }
    }
}
