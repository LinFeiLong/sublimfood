//
//  sublimfoodApp.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

@main
struct SublimfoodApp: App {
    
    @StateObject private var favoritesManager = FavoritesManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(favoritesManager)
        }
    }
}
