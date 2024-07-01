//
//  FavoritesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct FavoritesListView: View {
    
    @State private var favoritesRecipes: [RecipeModel] = UserDefaults.standard.favoritesRecipes
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                TitleView(title: "Mes Favoris", color: .pink)
                HStack {
                    if !favoritesRecipes.isEmpty {
                        ScrollView(.vertical) {
                            LazyVGrid(columns: columns, spacing: 0) {
                                ForEach(favoritesRecipes) { favorite in
                                    NavigationLink {
                                        RecipeDetailView(recipe: favorite)
                                    } label: {
                                        RecipeCardView(image: "boulettes_pdt",
                                                       title: favorite.title,
                                                       displayCircleHeart: true,
                                                       isHeartFilled: true)
                                    }
                                }
                            }
                        }
                    } else {
                        VStack {
                            Spacer()
                            Image(systemName: "heart.slash")
                                .font(.largeTitle)
                                .padding()
                                .foregroundColor(.orange)
                            Text("Pas de favoris actuellement")
                                .fontWeight(.light)
                            Spacer()
                        }
                        .onAppear(perform: {
                            favoritesRecipes.append(Recipes.all[0])
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesListView()
}
