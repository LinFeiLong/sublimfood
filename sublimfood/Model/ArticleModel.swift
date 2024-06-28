//
//  ArticleModel.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import Foundation

struct ArticleModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let caption: String
    let content: String
    
    init(title: String, image: String, caption: String = "", content: String = "") {
        self.title = title
        self.image = image
        self.caption = caption
        self.content = content
    }
}


