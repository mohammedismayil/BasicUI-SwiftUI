//
//  BasicUI_SwiftUIApp.swift
//  Shared
//
//  Created by Mohammed Ismayil on 01/05/22.
//

import SwiftUI

@main
struct BasicUI_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
