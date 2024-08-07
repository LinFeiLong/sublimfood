//
//  ArticlesListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

struct ArticlesListView: View {    
    init() {
        UIUtilities.configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    TitleView(title: "Congélation", color: .cyan)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(Articles.all.filter {$0.type == .frozen}) {article in
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
                            ForEach(Articles.all.filter {$0.type == .recycle}) {article in
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
                            ForEach(Articles.all.filter {$0.type == .cosmetic}) {article in
                                NavigationLink {
                                    ArticleView(article: article)
                                } label : {
                                    RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                                }
                            }
                        }.padding(15)
                    }
                }.navigationTitle("Astuces")
            }
        }
        .accentColor(.white)
    }
}

#Preview {
    ArticlesListView()
}
