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
