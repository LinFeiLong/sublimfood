//
//  UserDefault+SavedIngredients.swift
//  sublimfood
//
//  Created by Tarek Noubli on 28/06/2024.
//

import Foundation

extension UserDefaults {
    var savedIngredients: [String] {
        get {
            return UserDefaults.standard.stringArray(forKey: "ingredients") ?? []
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "ingredients")
        }
    }
    var favoritesRecipes: [RecipeModel] {
        get {
            if let data = UserDefaults.standard.data(forKey: "favoritesRecipes") {
                do {
                    let decoder = JSONDecoder()
                    return try decoder.decode([RecipeModel].self, from: data)
                } catch {
                    print("Erreur lors du décodage des recettes favorites : \(error)")
                    return []
                }
            }
            return []
        }
        set {
            do {
                let encoder = JSONEncoder()
                let data = try encoder.encode(newValue)
                UserDefaults.standard.set(data, forKey: "favoritesRecipes")
            } catch {
                print("Erreur lors de l'encodage des recettes favorites : \(error)")
            }
        }
    }
}
