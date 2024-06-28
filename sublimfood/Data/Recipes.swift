//
//  Recipes.swift
//  sublimfood
//
//  Created by Tarek Noubli on 28/06/2024.
//

import Foundation

var recipeModel = RecipeModel(
    title: "Boulettes de Patates",
    image: "boulettes_pdt",
    ingredients: ["1kg PDT",
                  "1 oeuf",
                  "2 blancs d'oeuf",
                  "4 cas chapelure",
                  "150g boeu d'Auvergne",
                  "huile de friture",
                  "sel",
                  "poivre"],
    steps: ["Faites cuire les pommes de terre à la vapeur, épluchez-les et écrasez-les en purée.",
            "Salez, poivrez et incorporez l'oeuf entier à la purée refroidie.",
            "Formez des boulettes dans lequelles vous insérerez une noisette de bleu d'Auvergne.",
            "Passez-les dans les 2 blancs d'oeufs légèrement battus, puis dans la chapelure.",
            "Laissez reposer 30 min avant de les frires 5 min dans l'huile bien chaude"])
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
