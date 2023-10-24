//
//  ContentView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var text : String = ""
    @State var list : [(String, Bool)] = []
    @State var savedName : String = ""
    @State var answerColor : Color = Color.gray
    @State var status : String = "Pending..."
    @State var currentElement = Element()
    @State var displayedElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
    @State var disList : Set<Element> = []
    @State var disGList : Set<Int> = []
    @State var num = 0
    @StateObject var elementList : ElementList = ElementList()
    @EnvironmentObject var settings : Settings
    
    var body: some View {
        TabView {
            
            VStack {
                Text(status)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(answerColor.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                
                ElementView(element: $displayedElement)
                
                HStack {
                    Button {
                        displayedElement = currentElement
                        if text.lowercased() == currentElement.symbol.lowercased() {
                            status = "Correct!"
                            answerColor = Color.green
                        } else {
                            status = "Try Again!"
                            answerColor = Color.red
                        }
                    } label: {
                        Text("Check")
                            .padding()
                            .frame(width: 133, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                    }
                    
                    Button {
                        text = ""
                        status = "Pending..."
                        answerColor = Color.gray
                        displayedElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
                        currentElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
                        
                        repeat {
                            currentElement = elementList.list[Int.random(in: 0...elementList.list.count - 1)]
                        } while (disList.contains(currentElement))
                        
                        for i in settings.options {
                            if i.1 {
                                list.append(i)
                            }
                        }
                        
                        num = Int.random(in: 0..<list.count)
                        
                        savedName = list[num].0
                        
                        if savedName == "Atomic Number" {
                            displayedElement.aNum = currentElement.aNum
                        } else if savedName == "Molar Mass" {
                            displayedElement.aMass = currentElement.aMass
                        } else if savedName == "Name" {
                            displayedElement.name = currentElement.name
                        } else {
                            displayedElement.symbol = currentElement.symbol
                        }
                            
                    } label: {
                        Text("New Element")
                            .padding()
                            .frame(width: 133, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                    }
                    .disabled(disList.count == elementList.list.count)
                    
                }
                
                TextField("Element Symbol", text: $text)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .disableAutocorrection(true)
            }
            .tabItem {
                Label("Elements", systemImage: "questionmark")
                
                
                
            }
            TableView(eList: $elementList.list, dList: $disList)
                .tabItem {
                    Label("Block S", systemImage: "bolt")
                }
            TablePView(eList: $elementList.list, dList: $disList)
                .tabItem {
                    Label("Block P", systemImage: "bolt")
                }
            TableDView(eList: $elementList.list, dList: $disList)
                .tabItem {
                    Label("Block D", systemImage: "bolt")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}
