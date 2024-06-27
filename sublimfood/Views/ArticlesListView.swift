//
//  ArticlesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct ArticlesListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TitleView(title: "Congélation", color: .cyan)
                ScrollView(.horizontal) {
                    ForEach((1...5).reversed(), id: \.self) { _ in
                        RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
                    }
                }
                .frame(height: 50)
                TitleView(title: "Recyclage", color: .cyan)
                ScrollView(.horizontal) {
                    ForEach((1...5).reversed(), id: \.self) { _ in
                        RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
                    }
                }
                TitleView(title: "Cosmetique", color: .cyan)
                ScrollView(.horizontal) {
                    ForEach((1...5).reversed(), id: \.self) { _ in
                        RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
                    }
                }
            }
            .navigationTitle("Astuces")
        }
    }
}

#Preview {
    ArticlesListView()
}
