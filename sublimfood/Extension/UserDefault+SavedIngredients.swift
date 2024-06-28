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
}
