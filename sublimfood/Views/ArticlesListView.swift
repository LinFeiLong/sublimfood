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
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    TitleView(title: "Congélation", color: .cyan)
                        .padding(.top, 20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(otherArticles.filter {$0.type == .frozen}) {article in
                                NavigationLink {
                                    ArticleView(article: article)
                                } label : {
                                    RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }

                    TitleView(title: "Recyclage", color: .green)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(otherArticles.filter {$0.type == .recycle}) {article in
                                NavigationLink {
                                    ArticleView(article: article)
                                } label : {
                                    RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                    
                    TitleView(title: "Cosmétiques", color: .pink)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(otherArticles.filter {$0.type == .cosmetic}) {article in
                                NavigationLink {
                                    ArticleView(article: article)
                                } label : {
                                    RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                }
            }
            .navigationTitle("Astuces")
        }
    }
}

#Preview {
    ArticlesListView(otherArticles: Articles.all)
}
