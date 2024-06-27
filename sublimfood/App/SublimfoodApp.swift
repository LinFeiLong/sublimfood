//
//  sublimfoodApp.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

@main
struct SublimfoodApp: App {
    
    @State var selectedTab = "Ingrédients"
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                    IngredientsListView()
                    .tabItem { Label("Ingrédients", systemImage: "refrigerator")
                    }
                    .tag("Ingrédients")
                    ArticlesListView()
                    .tabItem { Label("Astuces", systemImage: "lightbulb.max")
                    }
                    .tag("Astuces")
                    FavoritesListView()
                    .tabItem { Label("Favoris", systemImage: "heart")
                    }
                    .tag("Favoris")
                }
            .accentColor(.orange) // DEPRECATED IN FUTUR iOS 
        }
    }
}
