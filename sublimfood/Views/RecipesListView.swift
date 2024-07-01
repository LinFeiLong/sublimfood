//
//  RecipesListView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 28/06/2024.
//

import SwiftUI

struct RecipesListView: View {
    var ingredient: String
    var recipes: [RecipeModel] {
        Recipes.all.filter { $0.ingredients.contains(ingredient) }
    }
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    GeometryReader { geometry in
                        IngredientButtonView(
                            imageName: "tomato",
                            label: "Tomate"
                        )
                        .frame(width: geometry.size.width / 2)
                    }
                    .frame(height: BTN_HEIGHT)
                    .padding(.bottom, 10)
                    TitleView(title: "Recettes alimentaires", color: .cyan)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }
                    }
                    TitleView(title: "Upcycling", color: .green)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }
                    }
                    
                    TitleView(title: "Autres recettes", color: .pink)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Recettes")
            .onAppear(perform: {
                print(recipes)
            })
        }
    }
}
#Preview {
    RecipesListView(ingredient: "Tomate")
}

