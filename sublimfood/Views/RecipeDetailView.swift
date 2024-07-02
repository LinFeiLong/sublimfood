//
//  RecipeDetailView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: RecipeModel
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State var showAlert = false
    var isFavorite: Bool {
        favoritesManager.favorites.contains { $0.title == recipe.title }
    }
    
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
                            handleFavorite(recipe: recipe)
                        } label: {
                            ButtonView(label: isFavorite ? "Retirer des favoris" : "Ajouter aux favoris",
                                       icon: isFavorite ? "heart.fill" : "heart",
                                       fontColor: .white,
                                       color: .orange,
                                       borderColor: .orange)
                        }
                        .animation(.default, value: 2)
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
    }
    
    private func handleFavorite(recipe: RecipeModel) {
        withAnimation {
            if isFavorite {
                favoritesManager.favorites.removeAll { $0.title == recipe.title }
            } else {
                favoritesManager.favorites.append(recipe)
            }
        }
    }
    
}

//#Preview {
//    RecipeDetailView(recipe: Recipes.all[0])
//}
