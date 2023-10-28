//
//  SettingsView.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong on 9/6/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settings : Settings
    @State var totalActive : Int = 3
    var body: some View {
        ZStack {
            VStack {
                // Selectable lookup options
                ForEach($settings.options.indices, id: \.self) { index in
                    Button {
                        settings.options[index].1.toggle()
                        
                        totalActive = 0
                        for i in settings.options {
                            if i.1 == true {
                                totalActive += 1
                            }
                        }
                    } label: {
                        Text("\(settings.options[index].0)")
                            .padding()
                            .background(settings.options[index].1 == true ? Color.metalloidColor : Color.gray.opacity(0.3))
                            .cornerRadius(10)
                    }
                    .disabled(settings.options[index].1 == true && totalActive <= 1)
                }
                // Current Unknown Picker
                List {
                    Picker("Current Unknown", selection: $settings.states) {
                        Text("Atomic Number").tag(States.aNum)
                        Text("Molar Mass").tag(States.molarMass)
                        Text("Name").tag(States.name)
                        Text("Symbol").tag(States.symbol)
                    }
                }
            }
        }
    }
}
