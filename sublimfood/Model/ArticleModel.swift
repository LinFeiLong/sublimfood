//
//  ArticleModel.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import Foundation

enum TypeOfArticle {
    case frozen
    case recycle
    case cosmetic
}

struct ArticleModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let caption: String?
    let content: String
    let type   : TypeOfArticle
}



