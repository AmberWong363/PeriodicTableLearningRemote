//
//  TableDView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong on 8/22/23.
//

import SwiftUI

struct TableDView: View {
    @Binding var eList : [Element]
    @Binding var dList : Set<Element>
    @State var disabled : [Bool] = [false, false, false, false, false, false, false, false, false, false]
    @State var color : [Color] = [Color.nonMetColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor,
                                  Color.nonMetColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor,
                                  Color.metalloidColor, Color.metalColor, Color.metalColor, Color.metalColor, Color.metalColor, Color.metalColor,
                                  Color.nonMetColor, Color.metalloidColor, Color.metalloidColor, Color.metalColor, Color.metalColor, Color.metalColor,
                                  Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalloidColor, Color.metalColor, Color.metalColor,
                                  Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalColor, Color.metalColor,
                                  Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalColor,
                                  Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.metalColor,
                                  Color.transMetColor, Color.transMetColor, Color.laColor, Color.acColor, Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor,Color.transMetColor, Color.transMetColor, Color.transMetColor, Color.transMetColor
                                  
    ]
    
    var body: some View {
        VStack {
            HStack {
                // Group G3
                VStack {
                    Button {
                        for i in 50..<54 {
                            if disabled[0] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                                Text("G3")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(50..<54) {i in
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
                
                // Group G4
                VStack {
                    Button {
                        for i in 54..<58 {
                            if disabled[1] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                                Text("G4")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(54..<58) {i in
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
                
                // Group G5
                VStack {
                    Button {
                        for i in 58..<62 {
                            if disabled[2] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[2].toggle()
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
                                Text("G5")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(58..<62) {i in
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
                
                // Group G6
                VStack {
                    Button {
                        for i in 62..<66 {
                            if disabled[3] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[3].toggle()
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
                                Text("G6")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(62..<66) {i in
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
                
                // Group G7
                VStack {
                    Button {
                        for i in 66..<70 {
                            if disabled[4] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[4].toggle()
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
                                Text("G7")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(66..<70) {i in
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
            
            HStack {
                // Group G8
                VStack {
                    Button {
                        for i in 70..<74 {
                            if disabled[5] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[5].toggle()
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
                                Text("G8")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(70..<74) {i in
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
                
                // Group G9
                VStack {
                    Button {
                        for i in 74..<78 {
                            if disabled[6] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[6].toggle()
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
                                Text("G9")
                                    .font(Font.custom("hi", fixedSize: 17))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(74..<78) {i in
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
                
                // Group G10
                VStack {
                    Button {
                        for i in 78..<82 {
                            if disabled[7] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[7].toggle()
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
                                Text("G10")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(78..<82) {i in
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
                
                // Group G11
                VStack {
                    Button {
                        for i in 82..<86 {
                            if disabled[8] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[8].toggle()
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
                                Text("G11")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(82..<86) {i in
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
                
                // Group G12
                VStack {
                    Button {
                        for i in 86..<90 {
                            if disabled[9] {
                                eList[i].enabled = true
                                
                            } else {
                                eList[i].enabled = false
                                
                            }
                            
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
                        disabled[9].toggle()
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
                                Text("G12")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    ForEach(86..<90) {i in
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
