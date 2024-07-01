//
//  ArticlesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct ArticlesListView: View {
    var otherArticles: [ArticleModel]
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                TitleView(title: "Congélation", color: .cyan)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(otherArticles) {article in
                            NavigationLink {
                                ArticleView(article: article)
                            } label : {
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                TitleView(title: "Recyclage", color: .green)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(otherArticles) {article in
                            NavigationLink {
                                ArticleView(article: article)
                            } label : {
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                
                TitleView(title: "Cosmétiques", color: .pink)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(otherArticles) {article in
                            NavigationLink {
                                ArticleView(article: article)
                            } label : {
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Astuces")
        }
    }
}

#Preview {
    ArticlesListView(otherArticles: articlesModel)
}
