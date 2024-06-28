//
//  RecipesListView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 28/06/2024.
//

import SwiftUI

struct RecipesListView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    IngredientBtnView(label: "Tomates", image: "tomato", action: false)
                    TitleView(title: "Recettes alimentaires", color: .cyan)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(articlesModel) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                    TitleView(title: "Upcycling", color: .green)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(articlesModel) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                    
                    TitleView(title: "Autres recettes", color: .pink)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(articlesModel) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Recettes")
        }
    }
}
#Preview {
    RecipesListView()
}

