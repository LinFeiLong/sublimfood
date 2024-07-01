//
//  FavoritesManager.swift
//  sublimfood
//
//  Created by Tarek Noubli on 01/07/2024.
//

import Foundation

class FavoritesManager: ObservableObject {
    @Published var favorites: [RecipeModel] {
        didSet {
            UserDefaults.standard.favoritesRecipes = favorites
        }
    }
    
    init() {
        self.favorites = UserDefaults.standard.favoritesRecipes
    }
}
