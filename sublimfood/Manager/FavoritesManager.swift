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
    
    func isFavorite(_ recipe: RecipeModel) -> Bool {
        favorites.contains { $0.title == recipe.title }
    }
    
    func toggleFavorite(_ recipe: RecipeModel) {
        if favorites.contains(where: { $0.title == recipe.title }) {
            favorites.removeAll { $0.title == recipe.title }
        } else {
            favorites.append(recipe)
        }
    }
}
