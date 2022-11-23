//
//  ContentView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var text : String = ""
    @State var status : String = "Pending..."
    @State var currentElement = Element()
    @State var displayedElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
    @StateObject var elementList : ElementList = ElementList()
    @State var disList : Set<Element> = []
    @State var num = 0
    
    var body: some View {
        TabView {
            
            VStack {
                Text(status)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.gray.opacity(0.5))
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                
                ElementView(element: $displayedElement)
                
                HStack {
                    Button {
                        displayedElement = currentElement
                        if text.lowercased() == currentElement.symbol.lowercased() {
                            status = "Correct!"
                        } else {
                            status = "Try Again!"
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
                        displayedElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
                        currentElement = Element("?", aNum: 0, aMass: 0, symbol: "?")
                        
                        repeat {
                            currentElement = elementList.list[Int.random(in: 0...elementList.list.count - 1)]
                        } while (disList.contains(currentElement))
                        
                        num = Int.random(in: 1...3)
                        
                        switch (num) {
                        case 1:
                            displayedElement.aNum = currentElement.aNum
                        case 2:
                            displayedElement.aMass = currentElement.aMass
                        default:
                            displayedElement.name = currentElement.name
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
                Label("Elements", systemImage: "bolt")
                
                
                
            }
            TableView(eList: $elementList.list, dList: $disList)
                .tabItem {
                    Label("Table S", systemImage: "gear")
                }
            TablePView(eList: $elementList.list, dList: $disList)
                .tabItem {
                    Label("Table P", systemImage: "gear")
                }
        }
    }
}
