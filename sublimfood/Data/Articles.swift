//
//  Articles.swift
//  sublimfood
//
//  Created by Tarek Noubli on 28/06/2024.
//

import Foundation

var caption: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var content: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var articlesModel: [ArticleModel] = [
    ArticleModel(title: "Boulettes de Pomme de Terre", image: "boulettes_pdt", caption: caption, content: content, type: .recycle),
    ArticleModel(title: "Gazpacho de tomates", image: "gazpacho_tomates", caption: caption, content: content, type: .recycle ),
    ArticleModel(title: "Légumes sautés", image: "legumes_sautes", caption: caption, content: content, type: .recycle ),
    ArticleModel(title: "Sorbet de framboises", image: "sorbet_framboises", caption: caption, content: content, type: .recycle ),
]
struct Articles {
    static let all = [
        ArticleModel(title: "Les aliments qui se conservent",
                     image: "congelation-aliments",
                     caption: "Ne jetez plus vos restes de steak ou de saumon : transformez-les en plats savoureux et variés pour réduire le gaspillage alimentaire avec créativité !",
                     content: "Vous venez de terminer votre steak ou votre pavé de saumon mais il vous en reste ? Ne vous dirigez pas trop vite vers la poubelle, il existe plein de recettes simples et délicieuses pour votre prochain repas. Parce qu’éviter de gaspiller ne veut pas dire manger la même chose, faites preuve d’imagination ! Votre steak peut devenir de la viande hachée pour une sauce bolognaise maison, votre pavé de saumon peut se transformer en miettes pour un gratin de poissons, avance Florence Foucaut. Ces plats peuvent ensuite être cuits tout de suite pour le repas du soir ou congelés pour être mangé plus tard. Ce n’est pas de recuire un aliment qui le rend impropre à la consommation mais c’est la manière dont il a précédemment été conservé"
                     ,
                     type: .frozen),
        ArticleModel(title: "Que faire de ses déchets alimentaires ?",
                     image: "recyclages",
                     caption: "Compostez vos déchets alimentaires : transformez-les en engrais naturel pour enrichir les sols de vos jardins et favoriser une croissance végétale optimale.",
                     content: "Le compostage : la décomposition des déchets alimentaires permet de fabriquer de l’engrais naturel pour les sols de jardins et terrains agricoles. Le retour à la terre des ordures organiques fertilise les sols et optimise donc la pousse des végétaux.",
                     type: .recycle),
        ArticleModel(title: "Comment recycler son marc de café en produits de beauté !",
                     image: "marc-de-café",
                     caption: "Tonifiant et adoucissant, le marc de café s'utilise en gommage, masque ou soin exfoliant, redonnant éclat aux cheveux foncés et combattant la cellulite grâce à la caféine.",
                     content: "Tonifiant et adoucissant, le marc de café a aussi pour particularité d'être gainant et décongestionnant. On peut l'utiliser de différentes façons : en gommage, en masque ou encore en soin exfoliant. Les cheveux foncés vont l'adorer car il va leur redonner de l'éclat. La caféine est par ailleurs un composant que l'on retrouve dans de nombreuses crèmes anti-cellulite.",
                     type: .cosmetic)
    ]

}

