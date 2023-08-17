//
//  GlowHighApp.swift
//  GlowHigh
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

@main
struct GlowHighApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            Journal()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
