//
//  ExpirappApp.swift
//  Expirapp
//
//  Created by Henry Torrico Jimpol on 11/2/20.
//

import SwiftUI

@main
struct ExpirappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
