//
//  ArticleView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

func limitString(_ input: String, to length: Int, withTrailing trailing: String = "...") -> String {
    if input.count > length {
        let index = input.index(input.startIndex, offsetBy: length)
        return String(input[..<index]) + trailing
    } else {
        return input
    }
}

struct ArticleView: View {
    var article: ArticleModel
    
    init(article: ArticleModel) {
        self.article = article
        UIUtilities.configureNavigationBarAppearance()
    }
    
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
                        if ((article.caption) != nil) {
                            Text(article.caption!)
                                .padding(.vertical, 10)
                        }
                        
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
        .navigationTitle(limitString(article.title, to: 22))
        .accentColor(.white)
        
    }
}

#Preview {
    ArticleView(article: Articles.all[0])
}
