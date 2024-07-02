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

        // Customize navigation bar appearance
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.orange
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white
        
        // Customize UIBarButtonItem appearance
//        UIBarButtonItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
                IngredientsListView()
                .tabItem { Label("Ingrédients", systemImage: "refrigerator")
                }
                .tag("Ingrédients")
            ArticlesListView(otherArticles: Articles.all)
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

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(FavoritesManager())
    }
}
