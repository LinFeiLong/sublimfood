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
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
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
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(otherArticles) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                .padding(25)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ArticleView(article: articlesModel[0], otherArticles: articlesModel)
}
