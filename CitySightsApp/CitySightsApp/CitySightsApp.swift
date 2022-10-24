//
//  CitySightsAppApp.swift
//  CitySightsApp
//
//  Created by Elvis Masiya on 2022/09/20.
//

import SwiftUI

@main
struct CitySightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView().environmentObject(ContentModel())
        }
    }
}
