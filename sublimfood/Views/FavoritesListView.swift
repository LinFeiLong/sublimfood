//
//  FavoritesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct FavoritesListView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                TitleView(title: "Mes Favoris", color: .pink)
                HStack {
                    ScrollView(.vertical) {
                        LazyVGrid(columns: columns, spacing: 0) {
                            ForEach((1...10).reversed(), id: \.self) { ingredient in
                                RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesListView()
}
