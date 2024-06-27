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

var caption: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var title: String = "Boulettes de Pommes de Terre"

var image: String = "boulettes_pdt"

var content: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var articlesModel: [ArticleModel] = [
    ArticleModel(title: title, image: image, caption: caption, content: content ),
    ArticleModel(title: title, image: image, caption: "", content: ""),
    ArticleModel(title: title, image: image)
]
