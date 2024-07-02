//
//  MainTabView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab = "Ingrédients"
    
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
//        .navigationBarHidden(true)
        .accentColor(.orange) // DEPRECATED IN FUTUR iOS
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(FavoritesManager())
    }
}
