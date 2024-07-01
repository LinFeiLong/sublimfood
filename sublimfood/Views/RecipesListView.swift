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
                            imageName: ingredient.lowercased(),
                            label: ingredient
                        )
                        .frame(width: geometry.size.width / 2)
                        .padding([.leading, .trailing], 15)
                        .padding([.top], 15)
                    }
                    .frame(height: BTN_HEIGHT)
                    .padding(.bottom, 20)
                    TitleView(title: "Recettes alimentaires", color: .cyan)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                    TitleView(title: "Upcycling", color: .green)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                    
                    TitleView(title: "Autres recettes", color: .pink)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(Recipes.all) {recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeCardView(image: recipe.image, title: recipe.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                }
            }
            .navigationTitle("Recettes")
            .toolbarBackground(Color.orange, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .onAppear(perform: {
                print(recipes)
            })
        }
    }
}
#Preview {
    RecipesListView(ingredient: "Tomate")
}

