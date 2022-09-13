//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Elvis Masiya on 2022/09/12.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}