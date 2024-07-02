//
//  MainTabView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: String
    
    init(selectedTab: String = "Ingrédients") {
        _selectedTab = State(initialValue: selectedTab)
        UIUtilities.configureNavigationBarAppearance()
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            IngredientsListView()
                .tabItem { 
                    Label("Ingrédients", systemImage: "refrigerator")
                }
                .tag("Ingrédients")
            ArticlesListView()
                .tabItem { 
                    Label("Astuces", systemImage: "lightbulb")
                }
                .tag("Astuces")
            FavoritesListView()
                .tabItem { 
                    Label("Favoris", systemImage: "heart")
                }
                .tag("Favoris")
        }
        .accentColor(.orange) // DEPRECATED IN FUTUR iOS
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(FavoritesManager())
    }
}
