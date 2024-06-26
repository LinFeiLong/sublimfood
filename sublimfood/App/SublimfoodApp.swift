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
                    EmptyView()
                    .tabItem { Label("Ingrédients", systemImage: "refrigerator")
                    }
                    .tag("Ingrédients")
                    EmptyView()
                    .tabItem { Label("Astuces", systemImage: "lightbulb.max")
                    }
                    .tag("Astuces")
                    EmptyView()
                    .tabItem { Label("Favoris", systemImage: "heart")
                    }
                    .tag("Favoris")
                }
        }
    }
}
