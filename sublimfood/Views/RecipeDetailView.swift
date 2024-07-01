//
//  RecipeDetailView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: RecipeModel
    @State var favorites = UserDefaults.standard.favoritesRecipes
    @State var showAlert = false
    @State var isFavorite = false
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                VStack(spacing: 20) {
                    VStack {
                        Button {
                            print("Fav button Tapped")
                                handleFavorite(recipe: recipe)
                        } label: {
                            ButtonView(label: isFavorite ? "Retirer des favoris" : "Ajouter aux favoris",
                                       icon: isFavorite ? "heart.fill" : "heart",
                                       fontColor: .white,
                                       color: .orange,
                                       borderColor: .orange)
                        }
                        
                        ShareLinkBtnView()
                        
                        
                    }
                    Text("Ingrédients")
                        .font(.title)
                        .bold()
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Button(action: {}, label: {
                                IngredientButtonView(imageName: ingredient.lowercased(),
                                                     label: ingredient)
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
        .onAppear(perform: {
            //
        })
    }
    
    private func handleFavorite(recipe: RecipeModel) {
        withAnimation {
            if isFavorite {
                favorites.removeAll { $0.title == recipe.title }
                saveFavorites()
            } else {
                favorites.append(recipe)
                saveFavorites()
            }
        }
    }
    
    private func saveFavorites() {
        UserDefaults.standard.favoritesRecipes = favorites
    }
}

#Preview {
    RecipeDetailView(recipe: Recipes.all[0])
}
