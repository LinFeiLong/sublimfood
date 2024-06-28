//
//  ArticleView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct ArticleView: View {
    var article: ArticleModel
    var otherArticles: [ArticleModel]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image(article.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .clipped()
                    
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text(article.caption)
                                .font(.caption)
                                .padding(.vertical, 10)
                            
                            Text(article.title)
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 10)
                            
                            Text(article.content)
                            
                            Text("Autres astuces")
                                .font(.title2)
                                .bold()
                                .padding(.vertical, 10)
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(Array(otherArticles.enumerated()), id: \.element.id) { index, article in
                                    NavigationLink {
                                        ArticleView(article: articlesModel[index], otherArticles: articlesModel)
                                    } label : {
                                        RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                                    }
                                }.navigationTitle("Astuces")
                            }
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    ArticleView(article: articlesModel[0], otherArticles: articlesModel)
}
