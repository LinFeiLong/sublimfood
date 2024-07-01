//
//  ArticleView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct ArticleView: View {
    var article: ArticleModel
    
    var body: some View {
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
                    }
                    .padding()
                    
                }
            }
            
            
        }
    }
}

#Preview {
    ArticleView(article: articlesModel[0])
}
