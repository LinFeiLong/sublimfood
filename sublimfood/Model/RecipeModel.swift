//
//  RecipeModel.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import Foundation

struct RecipeModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let ingredients: [String]
    let steps: [String]
}

struct Recipes {
    static let all = [
        RecipeModel(title: "Gazpacho de tomates",
                    image: "tomato",
                    ingredients: ["Tomate", "Sel"],
                    steps: ["Peler les tomates"]),
        RecipeModel(title: "Tarte aux tomates",
                    image: "tomato",
                    ingredients: ["Tomate", "Pate sablé"],
                    steps: ["Préchauffer le four"]),
        RecipeModel(title: "Salade de tomates",
                    image: "tomato",
                    ingredients: ["Tomate", "Huile d'olive"],
                    steps: ["Laver les tomates", "Couper les tomates"])
    ]
}
