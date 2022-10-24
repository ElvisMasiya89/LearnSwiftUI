//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by Elvis Masiya on 2022/10/17.
//

import SwiftUI

@main
struct CoreDataDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
