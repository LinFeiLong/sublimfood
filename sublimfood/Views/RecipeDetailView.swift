//
//  RecipeDetailView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: RecipeModel
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("boulettes_pdt")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                VStack(spacing: 20) {
                    VStack {
                        ButtonView(label: "Ajouter aux favoris", icon: "heart", fontColor: .white, color: .orange, borderColor: .orange)
                        
                        ButtonView(label: "Partager la recette", icon: "square.and.arrow.up", fontColor: .orange, color: .white, borderColor: .orange)
                    }
                    
                    Text("Ingrédients")
                        .font(.title)
                        .bold()
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Button(action: {}, label: {
                                IngredientButtonView(imageName: "tomato", label: ingredient)
                            })
                           
                        }
                    }
                    .padding()
                    
                    Text("Préparation")
                        .font(.title)
                        .bold()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(Array(recipe.steps.enumerated()), id: \.element) { index, step in
                            Text("ETAPE \(index + 1)")
                                .bold()
                                .font(.title2)
                            Text(step)
                        }
                    }
                    .padding()
                }
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RecipeDetailView(recipe: recipeModel)
}
