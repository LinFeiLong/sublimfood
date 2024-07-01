//
//  RecipeModel.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import Foundation

enum TypeOfRecipe {
    case cook
    case upcycling
    case other
}

struct RecipeModel: Identifiable, Encodable & Decodable {
    var id = UUID()
    let title: String
    let image: String
    let ingredients: [String]
    let steps: [String]
}


