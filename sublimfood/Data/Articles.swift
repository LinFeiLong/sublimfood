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
        ArticleModel(
            title: "Les aliments qui se conservent",
            image: "congelation-aliments",
            caption: "Ne jetez plus vos restes de steak ou de saumon : transformez-les en plats savoureux et variés pour réduire le gaspillage alimentaire avec créativité !",
            content: "Vous venez de terminer votre steak ou votre pavé de saumon mais il vous en reste ? Ne vous dirigez pas trop vite vers la poubelle, il existe plein de recettes simples et délicieuses pour votre prochain repas. Parce qu’éviter de gaspiller ne veut pas dire manger la même chose, faites preuve d’imagination ! Votre steak peut devenir de la viande hachée pour une sauce bolognaise maison, votre pavé de saumon peut se transformer en miettes pour un gratin de poissons, avance Florence Foucaut. Ces plats peuvent ensuite être cuits tout de suite pour le repas du soir ou congelés pour être mangé plus tard. Ce n’est pas de recuire un aliment qui le rend impropre à la consommation mais c’est la manière dont il a précédemment été conservé"
            ,
            type: .frozen),
        ArticleModel(
            title: "Que faire de ses déchets alimentaires ?",
            image: "recyclages",
            caption: "Compostez vos déchets alimentaires : transformez-les en engrais naturel pour enrichir les sols de vos jardins et favoriser une croissance végétale optimale.",
            content: "Le compostage : la décomposition des déchets alimentaires permet de fabriquer de l’engrais naturel pour les sols de jardins et terrains agricoles. Le retour à la terre des ordures organiques fertilise les sols et optimise donc la pousse des végétaux.",
            type: .recycle),
        ArticleModel(
            title: "Comment recycler son marc de café en produits de beauté !",
            image: "marc-de-café",
            caption: "Tonifiant et adoucissant, le marc de café s'utilise en gommage, masque ou soin exfoliant, redonnant éclat aux cheveux foncés et combattant la cellulite grâce à la caféine.",
            content: "Tonifiant et adoucissant, le marc de café a aussi pour particularité d'être gainant et décongestionnant. On peut l'utiliser de différentes façons : en gommage, en masque ou encore en soin exfoliant. Les cheveux foncés vont l'adorer car il va leur redonner de l'éclat. La caféine est par ailleurs un composant que l'on retrouve dans de nombreuses crèmes anti-cellulite.",
            type: .cosmetic),
        ArticleModel(
            title: "Réutiliser les coquilles d'œufs",
            image: "coquilles-d-oeufs",
            caption: "Ne jetez plus vos coquilles d'œufs ! Utilisez-les comme engrais pour vos plantes ou pour nettoyer les casseroles.",
            content: "Les coquilles d'œufs, riches en calcium, sont excellentes comme engrais naturel pour les plantes. Écrasez-les et mélangez-les avec le sol pour enrichir votre jardin. De plus, elles peuvent être utilisées pour nettoyer les casseroles en les frottant doucement sur les résidus brûlés.",
            type: .recycle
        ),
        ArticleModel(
            title: "Transformer les vieilles bougies",
            image: "vieilles-bougies",
            caption: "Ne jetez pas vos vieilles bougies ! Apprenez à les recycler en nouvelles bougies ou en cire pour sceller des enveloppes.",
            content: "Vos vieilles bougies peuvent être fondues et recyclées en nouvelles bougies. Il suffit de faire fondre la cire restante, de la filtrer pour enlever les impuretés et de la verser dans un nouveau moule avec une nouvelle mèche. Vous pouvez également utiliser la cire fondue pour sceller des enveloppes ou créer des objets décoratifs.",
            type: .recycle
        ),
        ArticleModel(
            title: "Utiliser les restes de pain rassis",
            image: "pain-rassis",
            caption: "Ne jetez plus le pain rassis ! Transformez-le en pain perdu, croûtons ou chapelure maison.",
            content: "Le pain rassis peut être transformé en une variété de délicieuses recettes. Faites du pain perdu pour un petit-déjeuner gourmand, ou coupez-le en morceaux pour faire des croûtons savoureux à ajouter à vos salades et soupes. Vous pouvez également le broyer pour obtenir de la chapelure maison.",
            type: .recycle
        ),
        ArticleModel(
            title: "Fabriquer des jouets pour animaux avec des vieux vêtements",
            image: "jouets-animaux",
            caption: "Recyclez vos vieux vêtements en jouets pour vos animaux de compagnie.",
            content: "Vos vieux vêtements peuvent être transformés en jouets amusants pour vos animaux de compagnie. Découpez des bandes de tissu et tressez-les pour créer des cordes à mâcher, ou cousez-les en formes simples pour faire des peluches. Vos animaux apprécieront ces jouets faits maison et vous réduirez les déchets textiles.",
            type: .cosmetic
        ),
        ArticleModel(
            title: "Congelez vos herbes fraîches",
            image: "herbes-congelation",
            caption: "Prolongez la durée de vie de vos herbes fraîches en les congelant avec de l'huile d'olive dans des bacs à glaçons.",
            content: "Pour éviter que vos herbes fraîches ne se gâtent, hachez-les et placez-les dans des bacs à glaçons. Ajoutez de l'huile d'olive et congelez-les. Vous aurez ainsi des portions pratiques à ajouter directement à vos plats pour un goût frais et délicieux.",
            type: .frozen
        ),
        ArticleModel(
            title: "Conserver les fruits de saison",
            image: "fruits-congelation",
            caption: "Profitez des fruits de saison toute l'année en les congelant. Préparez-les en morceaux et congelez-les pour une utilisation ultérieure.",
            content: "Achetez des fruits de saison en grande quantité et préparez-les en les coupant en morceaux. Disposez-les sur une plaque de cuisson pour éviter qu'ils ne collent ensemble, puis congelez-les. Une fois congelés, transférez-les dans des sacs de congélation. Utilisez-les dans vos smoothies, desserts et autres recettes tout au long de l'année.",
            type: .frozen
        ),
        ArticleModel(
            title: "Congeler les soupes et les ragoûts",
            image: "soupes-congelation",
            caption: "Préparez des portions supplémentaires de soupes et de ragoûts et congelez-les pour des repas rapides et faciles.",
            content: "Lorsque vous préparez des soupes et des ragoûts, faites-en une plus grande quantité et congelez les portions supplémentaires. Utilisez des contenants hermétiques ou des sacs de congélation pour stocker ces repas pratiques. Réchauffez-les directement du congélateur pour un repas rapide et nourrissant.",
            type: .frozen
        )
    ]
    
}

