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
    var recipes: [RecipeModel] { Recipes.all.filter { $0.ingredients.contains(ingredient) } }
    var cookRecipes: [RecipeModel] { recipes.filter { $0.typeOfRecipe == .cook } }
    var upCyclingRecipes: [RecipeModel] { recipes.filter { $0.typeOfRecipe == .upcycling } }
    var otherRecipes: [RecipeModel] { recipes.filter { $0.typeOfRecipe == .other } }

    init(ingredient: String) {
        self.ingredient = ingredient
        UIUtilities.configureNavigationBarAppearance()
    }

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
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
                        RecipesSectionView(title: "Recettes alimentaires",
                                           titleLineColor: .cyan,
                                           recipes: cookRecipes)
                    }
                    if !upCyclingRecipes.isEmpty {
                        RecipesSectionView(title: "Upcycling",
                                           titleLineColor: .green,
                                           recipes: upCyclingRecipes)
                    }
                    if !otherRecipes.isEmpty {
                        RecipesSectionView(title: "Autres recettes", 
                                           titleLineColor: .pink,
                                           recipes: otherRecipes)
                    }
                }
            }
            .navigationTitle("Recettes")
        }
    }
}

struct RecipesSectionView: View {
    let title: String
    let titleLineColor: Color
    let recipes: [RecipeModel]
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var body: some View {
        TitleView(title: title, color: titleLineColor)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 20) {
                ForEach(recipes) { recipe in
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
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView(ingredient: "Tomate")
            .environmentObject(FavoritesManager())
    }
}


