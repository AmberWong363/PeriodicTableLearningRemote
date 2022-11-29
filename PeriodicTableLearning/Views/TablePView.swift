//
//  TableView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct TablePView: View {
    
    @Binding var eList : [Element]
    @Binding var dList : Set<Element>
    @State var disabled : [Bool] = [false, false, false, false, false, false]
    @State var color : [Color] = [
                Color.nonMetColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor, Color.alkaliColor,
                Color.nonMetColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor, Color.alkalineColor,
                Color.metalloidColor, Color.metalColor, Color.metalColor, Color.metalColor, Color.metalColor, Color.metalColor,
                 Color.nonMetColor, Color.metalloidColor, Color.metalloidColor, Color.metalColor, Color.metalColor, Color.metalColor,
                Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalloidColor, Color.metalColor, Color.metalColor,
                Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalColor, Color.metalColor,
                Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.nonMetColor, Color.metalloidColor, Color.metalColor,
                Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.nobleColor, Color.metalColor
    ]
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    // Group disable button, Yatta it's so cute!
                    Button {
                        for i in 14..<20 {
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
                                Text("G13")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }

                    ForEach(14..<20) {i in
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
                    
                    Button {
                        for i in 20..<26 {
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
                                Text("G14")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    ForEach(20..<26) {i in
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
                    
                    Button {
                        for i in 26..<32 {
                            if disabled[2] {
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
                                Text("G15")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    ForEach(26..<32) {i in
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
                    
                    Button {
                        for i in 32..<38 {
                            if disabled[3] {
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
                                Text("G16")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    ForEach(32..<38) {i in
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
                    
                    Button {
                        for i in 38..<44 {
                            if disabled[4] {
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
                                Text("G17")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    ForEach(38..<44) {i in
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
                    
                    Button {
                        for i in 44..<50 {
                            if disabled[5] {
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
                                Text("G18")
                                    .font(Font.custom("hi", fixedSize: 14))
                                    .foregroundColor(Color.black)
                                    .frame(width: 30, height: 18)
                                    .padding(.vertical, 1.0)
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    ForEach(44..<50) {i in
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

//struct TableView_Previews: PreviewProvider {
//    static var previews: some View {
//        TableView(eList: Binding.constant(ElementList().list), dList: Binding.constant([]))
//    }
//}
