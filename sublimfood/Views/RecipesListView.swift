//
//  RecipesListView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 28/06/2024.
//

import SwiftUI

struct RecipesListView: View {
    var ingredient: String
    @EnvironmentObject var favoritesManager: FavoritesManager
    var recipes: [RecipeModel] {
        Recipes.all.filter { $0.ingredients.contains(ingredient) }
    }
    var cookRecipes: [RecipeModel] {
        recipes.filter { $0.typeOfRecipe == .cook }
    }
    var upCyclingRecipes: [RecipeModel] {
        recipes.filter { $0.typeOfRecipe == .upcycling }
    }
    var otherRecipes: [RecipeModel] {
        recipes.filter { $0.typeOfRecipe == .other }
    }
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    GeometryReader { geometry in
                        IngredientButtonView(
                            imageName: ingredient.lowercased(),
                            label: ingredient
                        )
                        .frame(width: geometry.size.width / 2)
                        .padding([.leading, .trailing], 15)
                        .padding([.top], 15)
                    }
                    .frame(height: BTN_HEIGHT)
                    .padding(.bottom, 20)
                    if !cookRecipes.isEmpty {
                        TitleView(title: "Recettes alimentaires", color: .cyan)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 20) {
                                ForEach(cookRecipes) {recipe in
                                    ZStack {
                                        NavigationLink {
                                            RecipeDetailView(recipe: recipe)
                                        } label: {
                                            RecipeCardView(image: recipe.image,
                                                           title: recipe.title,
                                                           displayCircleHeart: false,
                                                           isHeartFilled: false)
                                        }
                                        Button(action: {
                                            withAnimation {
                                                favoritesManager.toggleFavorite(recipe)
                                            }
                                        }) {
                                            CircleHeartFillView(
                                                isHeartFilled: favoritesManager.isFavorite(recipe)
                                            )
                                        }
                                        .offset(x: 60, y: -80)
                                    }
                                }
                            }.padding(15)
                        }
                    }
                    if !upCyclingRecipes.isEmpty {
                        TitleView(title: "Upcycling", color: .green)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 20) {
                                ForEach(upCyclingRecipes) {recipe in
                                    ZStack {
                                        NavigationLink {
                                            RecipeDetailView(recipe: recipe)
                                        } label: {
                                            RecipeCardView(image: recipe.image,
                                                           title: recipe.title,
                                                           displayCircleHeart: false,
                                                           isHeartFilled: false)
                                        }
                                        Button(action: {
                                            withAnimation {
                                                favoritesManager.toggleFavorite(recipe)
                                            }
                                        }) {
                                            CircleHeartFillView(
                                                isHeartFilled: favoritesManager.isFavorite(recipe)
                                            )
                                        }
                                        .offset(x: 60, y: -80)
                                    }
                                    
                                }
                            }.padding(15)
                        }
                    }
                    if !otherRecipes.isEmpty {
                        TitleView(title: "Autres recettes", color: .pink)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 20) {
                                ForEach(otherRecipes) {recipe in
                                    ZStack {
                                        NavigationLink {
                                            RecipeDetailView(recipe: recipe)
                                        } label: {
                                            RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                        }
                                        Button(action: {
                                            withAnimation {
                                                favoritesManager.toggleFavorite(recipe)
                                            }
                                        }) {
                                            CircleHeartFillView(
                                                isHeartFilled: favoritesManager.isFavorite(recipe)
                                            )
                                        }
                                        .offset(x: 60, y: -80)
                                    }
                                }.padding(15)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Recettes")
            .toolbarBackground(Color.orange, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView(ingredient: "Tomate")
            .environmentObject(FavoritesManager())
    }
}


