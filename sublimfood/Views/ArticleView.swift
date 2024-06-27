//
//  ArticleView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct ArticleView: View {
    var caption: String
    var title: String
    var content: String
    var articles: [ArticleModel]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("boulettes_pdt")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                
                VStack(alignment: .leading) {
                    Text(caption)
                        .font(.caption)
                        .padding(.vertical, 10)
                    
                    Text(title)
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text(content)
                    
                    Text("Autres astuces")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(articles) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

var caption: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var title: String = "Boulettes de Pommes de Terre"

var content: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var articles: [ArticleModel] = [
    ArticleModel(title: "Boulettes de Pommes de Terre", image: "boulettes_pdt"),
    ArticleModel(title: "Boulettes de Pommes de Terre", image: "boulettes_pdt", caption: "", content: ""), ArticleModel(title: "Boulettes de Pommes de Terre", image: "boulettes_pdt")
]

#Preview {
    ArticleView(caption: caption, title: title, content: content, articles: articles)
}
