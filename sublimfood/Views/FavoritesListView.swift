//
//  FavoritesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct FavoritesListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TitleView(title: "Mes Favoris", color: .pink)
                HStack {
                    ScrollView(.vertical) {
                        ForEach((1...10).reversed(), id: \.self) { _ in
                            RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
                        }
                    }
                    ScrollView(.vertical) {
                        ForEach((1...10).reversed(), id: \.self) { _ in
                            RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
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
