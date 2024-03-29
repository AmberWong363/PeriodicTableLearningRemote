//
//  PeriodicTableLearningApp.swift
//  PeriodicTableLearning
//
//  Created by Amber Wong (student LM) on 11/22/22.
//

import SwiftUI

@main
struct PeriodicTableLearningApp: App {
    @StateObject var settings : Settings = Settings()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
