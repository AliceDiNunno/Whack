//
//  WhackApp.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
//

import SwiftUI
import SwiftData

@main
struct WhackApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
         WindowGroup {
            ContentView().environmentObject(ImageData())
                 .persistentSystemOverlays(.hidden)
         }
        //.modelContainer(sharedModelContainer)
    }
}
