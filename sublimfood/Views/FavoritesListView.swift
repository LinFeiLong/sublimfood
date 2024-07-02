//
//  FavoritesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct FavoritesListView: View {
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        if !favoritesManager.favorites.isEmpty {
                            LazyVGrid(columns: columns, spacing: 0) {
                                ForEach(favoritesManager.favorites) { favorite in
                                    ZStack {
                                        NavigationLink {
                                            RecipeDetailView(recipe: favorite)
                                        } label: {
                                            RecipeCardView(image: favorite.image,
                                                           title: favorite.title,
                                                           displayCircleHeart: true,
                                                           isHeartFilled: true)
                                        }
                                        Button(action: {
                                            withAnimation {
                                                favoritesManager.toggleFavorite(favorite)
                                            }
                                        }) {
                                            CircleHeartFillView(
                                                isHeartFilled: favoritesManager.isFavorite(favorite)
                                            )
                                        }
                                        .offset(x: 60, y: -80)
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
                        }
                    }
                    .navigationTitle("Mes Favoris")
                }
            }
        }
    }
}

struct FavoritesListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesListView()
            .environmentObject(FavoritesManager())
    }
}
