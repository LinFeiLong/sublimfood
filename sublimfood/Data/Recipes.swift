//
//  Recipes.swift
//  sublimfood
//
//  Created by Tarek Noubli on 28/06/2024.
//

import Foundation

struct Recipes {
    static let all = [
        RecipeModel(
            title: "Salade de Tomates",
            image: "image_salade_tomates",
            ingredients: ["Tomate", "Oignon", "Vinaigrette"],
            steps: ["Laver les tomates", "Couper les tomates en quartiers", "Peler et émincer les oignons", "Mélanger les tomates et les oignons dans un saladier", "Ajouter la vinaigrette", "Remuer délicatement pour bien enrober", "Servir frais"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Sauce Tomate Maison",
            image: "image_sauce_tomate",
            ingredients: ["Tomate", "ail", "Huile olive"],
            steps: ["Éplucher et hacher l'ail", "Faire chauffer l'huile d'olive dans une casserole", "Faire revenir l'ail jusqu'à ce qu'il soit doré", "Ajouter les tomates pelées et concassées", "Porter à ébullition, puis réduire le feu", "Laisser mijoter pendant 30 minutes en remuant de temps en temps", "Assaisonner avec du sel et du poivre", "Mixer la sauce si vous la préférez lisse"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Peaux de Tomates Séchées",
            image: "peaux_sechees",
            ingredients: ["Tomate"],
            steps: ["Préchauffer le four à 90°C", "Éplucher les tomates et récupérer les peaux", "Étaler les peaux sur une plaque de cuisson", "Faire sécher au four pendant 2 à 3 heures jusqu'à ce qu'elles soient croustillantes", "Laisser refroidir", "Mixer en poudre fine", "Conserver dans un bocal hermétique"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Engrais à base de Tomates",
            image: "image_engrais_tomates",
            ingredients: ["Tomate"],
            steps: ["Récupérer les peaux de tomates", "Faire sécher les peaux au soleil ou au four à basse température", "Une fois sèches, les broyer en petits morceaux", "Ajouter ces morceaux au compost ou directement au sol de votre jardin"],
            typeOfRecipe: .other
        ),
        // Recettes avec Orange
        RecipeModel(
            title: "Gâteau aux Oranges",
            image: "image_gateau_oranges",
            ingredients: ["Orange", "Farine", "Sucre", "Oeuf"],
            steps: ["Préchauffer le four à 180°C", "Laver les oranges, râper le zeste et presser le jus", "Dans un bol, mélanger les œufs et le sucre jusqu'à blanchiment", "Ajouter le zeste et le jus d'orange", "Incorporer la farine en mélangeant bien", "Verser la pâte dans un moule beurré et fariné", "Cuire au four pendant 35 à 40 minutes", "Laisser refroidir avant de démouler"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Glaçons de Jus d'Oranges",
            image: "image_glacons_oranges",
            ingredients: ["Orange"],
            steps: ["Presser les oranges pour obtenir le jus", "Filtrer le jus pour enlever la pulpe", "Verser le jus dans des moules à glaçons", "Placer les moules au congélateur", "Laisser congeler pendant au moins 4 heures", "Démouler les glaçons et les conserver dans un sac de congélation"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Poudre de Peaux d'Orange",
            image: "image_poudre_peaux_orange",
            ingredients: ["Orange"],
            steps: ["Laver et éplucher les oranges", "Faire sécher les peaux au four à basse température jusqu'à ce qu'elles soient cassantes", "Laisser refroidir", "Mixer les peaux séchées jusqu'à obtenir une poudre fine", "Conserver dans un bocal hermétique"],
            typeOfRecipe: .other
        ),
        RecipeModel(
            title: "Nettoyant Naturel à l'Orange",
            image: "image_nettoyant_orange",
            ingredients: ["Orange", "Vinaigre blanc"],
            steps: ["Peler les oranges et mettre les peaux dans un bocal", "Couvrir les peaux avec du vinaigre blanc", "Fermer le bocal et laisser macérer pendant deux semaines", "Filtrer le liquide pour enlever les peaux", "Diluer avec de l'eau (1 partie de vinaigre pour 1 partie d'eau)", "Transférer dans un vaporisateur pour une utilisation facile"],
            typeOfRecipe: .other
        ),
        // Recettes avec Pomme de terre
        RecipeModel(
            title: "Purée de Pommes de Terre",
            image: "image_puree_pommes",
            ingredients: ["Pomme de terre", "Beurre", "Lait"],
            steps: ["Éplucher et couper les pommes de terre en morceaux", "Les cuire dans une grande casserole d'eau salée jusqu'à ce qu'elles soient tendres", "Égoutter les pommes de terre", "Les écraser avec un presse-purée ou une fourchette", "Ajouter le beurre et le lait chaud", "Mélanger jusqu'à obtenir une consistance lisse et crémeuse", "Assaisonner avec du sel et du poivre"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Frites Maison",
            image: "image_frites",
            ingredients: ["Pomme de terre", "Huile"],
            steps: ["Laver et éplucher les pommes de terre", "Les couper en bâtonnets de taille uniforme", "Faire chauffer l'huile dans une friteuse ou une grande casserole", "Frire les pommes de terre en plusieurs fois jusqu'à ce qu'elles soient dorées et croustillantes", "Égoutter sur du papier absorbant", "Assaisonner avec du sel avant de servir"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Masque Visage à la Pomme de Terre",
            image: "image_masque_pdt",
            ingredients: ["Pomme de terre"],
            steps: ["Laver et éplucher une pomme de terre", "Râper la pomme de terre", "Appliquer la pulpe directement sur le visage propre", "Laisser agir pendant 15 à 20 minutes", "Rincer à l'eau tiède", "Sécher délicatement le visage avec une serviette"],
            typeOfRecipe: .other
        ),
        RecipeModel(
            title: "Engrais Liquide à base de Pomme de Terre",
            image: "image_engrais_pdt",
            ingredients: ["Pomme de terre"],
            steps: ["Cuire les pommes de terre dans de l'eau sans sel", "Récupérer l'eau de cuisson une fois les pommes de terre cuites", "Laisser refroidir l'eau de cuisson", "Utiliser cette eau pour arroser les plantes"],
            typeOfRecipe: .upcycling
        ),
        // Recettes avec Carotte
        RecipeModel(
            title: "Soupe de Carottes",
            image: "image_soupe_carottes",
            ingredients: ["Carotte", "Oignon", "Bouillon"],
            steps: ["Laver, éplucher et couper les carottes en rondelles", "Éplucher et émincer les oignons", "Faire revenir les oignons dans une casserole avec un peu d'huile", "Ajouter les carottes et continuer à cuire pendant quelques minutes", "Verser le bouillon et porter à ébullition", "Réduire le feu et laisser mijoter jusqu'à ce que les carottes soient tendres", "Mixer la soupe jusqu'à consistance lisse", "Assaisonner avec du sel et du poivre avant de servir"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Carottes Râpées",
            image: "image_carottes_rapees",
            ingredients: ["Carotte", "Citron", "Huile d'olive"],
            steps: ["Laver et éplucher les carottes", "Râper les carottes dans un saladier", "Presser le jus de citron", "Ajouter le jus de citron et l'huile d'olive aux carottes râpées", "Mélanger bien pour enrober les carottes", "Assaisonner avec du sel et du poivre", "Servir frais"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Carottes",
            image: "image_engrais_carottes",
            ingredients: ["Carotte"],
            steps: ["Laver et éplucher les carottes", "Faire sécher les épluchures au soleil ou au four à basse température", "Une fois sèches, les broyer en petits morceaux", "Ajouter ces morceaux au compost ou directement au sol de votre jardin"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à la Carotte",
            image: "image_masque_carotte",
            ingredients: ["Carotte"],
            steps: ["Laver et éplucher une carotte", "Râper la carotte", "Appliquer la pulpe directement sur le visage propre", "Laisser agir pendant 15 à 20 minutes", "Rincer à l'eau tiède", "Sécher délicatement le visage avec une serviette"],
            typeOfRecipe: .other
        ),
        // Recettes avec Pain
        RecipeModel(
            title: "Pain Perdu",
            image: "image_pain_perdu",
            ingredients: ["Pain", "Lait", "Oeuf", "Sucre"],
            steps: ["Battre les œufs dans un bol", "Ajouter le lait et le sucre, puis mélanger", "Tremper les tranches de pain dans le mélange", "Faire chauffer une poêle avec un peu de beurre", "Cuire les tranches de pain jusqu'à ce qu'elles soient dorées des deux côtés", "Servir chaud avec du sucre en poudre ou du sirop"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Croûtons Maison",
            image: "image_croutons",
            ingredients: ["Pain", "Huile olive", "Herbes"],
            steps: ["Préchauffer le four à 180°C", "Couper le pain en dés de taille uniforme", "Dans un bol, mélanger les dés de pain avec l'huile d'olive et les herbes", "Étaler les dés de pain assaisonnés sur une plaque de cuisson", "Cuire au four pendant 15 à 20 minutes jusqu'à ce qu'ils soient dorés et croustillants", "Laisser refroidir avant de les utiliser dans des salades ou des soupes"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Chapelure de pain sec Maison",
            image: "image_chapelure",
            ingredients: ["Pain"],
            steps: ["Préchauffer le four à 150°C", "Couper le pain sec en morceaux", "Étaler les morceaux de pain sur une plaque de cuisson", "Faire sécher au four pendant 15 à 20 minutes jusqu'à ce qu'ils soient bien secs", "Laisser refroidir", "Mixer les morceaux secs jusqu'à obtenir une poudre fine", "Conserver dans un bocal hermétique"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Engrais à base de Pain",
            image: "image_engrais_pain",
            ingredients: ["Pain"],
            steps: ["Couper le pain en petits morceaux", "Les faire tremper dans de l'eau pendant quelques heures", "Mélanger pour obtenir une pâte", "Utiliser cette pâte pour arroser les plantes ou ajouter au compost"],
            typeOfRecipe: .other
        ),
        // Recettes avec Banane
        RecipeModel(
            title: "Banana Bread",
            image: "image_banana_bread",
            ingredients: ["Banane", "Farine", "Sucre", "Oeuf"],
            steps: ["Préchauffer le four à 175°C", "Écraser les bananes dans un bol", "Ajouter les œufs et le sucre, puis mélanger", "Incorporer la farine et bien mélanger jusqu'à obtenir une pâte homogène", "Verser la pâte dans un moule à cake beurré et fariné", "Cuire au four pendant 60 minutes", "Laisser refroidir avant de démouler et de trancher"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Smoothie Banane",
            image: "image_smoothie_banane",
            ingredients: ["Banane", "Lait", "Miel"],
            steps: ["Éplucher et couper la banane en morceaux", "Mettre la banane, le lait et le miel dans un mixeur", "Mixer jusqu'à obtenir une consistance lisse", "Servir frais dans un verre"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Peaux de Banane",
            image: "image_engrais_banane",
            ingredients: ["Banane"],
            steps: ["Éplucher les bananes et récupérer les peaux", "Faire tremper les peaux de banane dans un récipient d'eau pendant 24 heures", "Filtrer l'eau et la conserver", "Utiliser cette eau pour arroser les plantes"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Capillaire à la Banane",
            image: "image_masque_capillaire",
            ingredients: ["Banane", "Huile olive"],
            steps: ["Éplucher et écraser les bananes dans un bol", "Ajouter l'huile d'olive et bien mélanger", "Appliquer le masque sur les cheveux propres et humides", "Laisser agir pendant 30 minutes", "Rincer abondamment et laver les cheveux comme d'habitude"],
            typeOfRecipe: .other
        ),
        // Recettes avec Oeuf
        RecipeModel(
            title: "Omelette",
            image: "image_omelette",
            ingredients: ["Oeuf", "Lait", "Fromage"],
            steps: ["Battre les œufs dans un bol", "Ajouter le lait et bien mélanger", "Faire chauffer une poêle avec un peu de beurre", "Verser les œufs battus dans la poêle", "Cuire à feu moyen jusqu'à ce que les œufs commencent à prendre", "Ajouter le fromage râpé", "Replier l'omelette en deux et laisser cuire jusqu'à ce que le fromage soit fondu", "Servir chaud"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Crêpes",
            image: "image_crepes",
            ingredients: ["Oeuf", "Farine", "Lait"],
            steps: ["Dans un bol, battre les œufs", "Ajouter la farine et bien mélanger", "Incorporer progressivement le lait pour éviter les grumeaux", "Faire chauffer une poêle avec un peu de beurre", "Verser une louche de pâte dans la poêle et étaler en une couche fine", "Cuire jusqu'à ce que les bords commencent à dorer, puis retourner", "Cuire l'autre côté jusqu'à ce qu'il soit doré", "Répéter avec le reste de la pâte"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Coquilles d'Oeuf",
            image: "image_engrais_coquilles",
            ingredients: ["Oeuf"],
            steps: ["Récupérer les coquilles d'œufs", "Les laver et les laisser sécher", "Écraser les coquilles en petits morceaux", "Saupoudrer ces morceaux autour des plantes ou les ajouter au compost"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à l'Oeuf",
            image: "image_masque_oeuf",
            ingredients: ["Oeuf"],
            steps: ["Séparer le blanc d'œuf du jaune", "Battre le blanc d'œuf jusqu'à ce qu'il soit mousseux", "Appliquer le blanc d'œuf sur le visage propre", "Laisser agir pendant 15 à 20 minutes", "Rincer à l'eau tiède et sécher délicatement", "Hydrater la peau après le masque"],
            typeOfRecipe: .other
        ),
        // Recettes avec Citrouille
        RecipeModel(
            title: "Soupe de Citrouille",
            image: "image_soupe_citrouille",
            ingredients: ["Citrouille", "Oignon", "Bouillon"],
            steps: ["Éplucher et couper la citrouille en morceaux", "Éplucher et émincer les oignons", "Faire revenir les oignons dans une casserole avec un peu d'huile", "Ajouter les morceaux de citrouille", "Verser le bouillon et porter à ébullition", "Réduire le feu et laisser mijoter jusqu'à ce que la citrouille soit tendre", "Mixer la soupe jusqu'à consistance lisse", "Assaisonner avec du sel et du poivre avant de servir"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Gâteau à la Citrouille",
            image: "image_gateau_citrouille",
            ingredients: ["Citrouille", "Farine", "Sucre", "Oeuf"],
            steps: ["Préchauffer le four à 180°C", "Cuire la citrouille à la vapeur et réduire en purée", "Dans un bol, mélanger les œufs et le sucre jusqu'à blanchiment", "Ajouter la purée de citrouille et bien mélanger", "Incorporer la farine en mélangeant bien", "Verser la pâte dans un moule beurré et fariné", "Cuire au four pendant 45 minutes", "Laisser refroidir avant de démouler"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Citrouille",
            image: "image_engrais_citrouille",
            ingredients: ["Citrouille"],
            steps: ["Récupérer les épluchures de citrouille", "Faire sécher les épluchures au soleil ou au four à basse température", "Une fois sèches, les broyer en petits morceaux", "Ajouter ces morceaux au compost ou directement au sol de votre jardin"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à la Citrouille",
            image: "image_masque_citrouille",
            ingredients: ["Citrouille"],
            steps: ["Laver et éplucher une citrouille", "Râper la citrouille", "Appliquer la pulpe directement sur le visage propre", "Laisser agir pendant 15 à 20 minutes", "Rincer à l'eau tiède", "Sécher délicatement le visage avec une serviette"],
            typeOfRecipe: .other
        ),
        // Recettes avec Chocolat
        RecipeModel(
            title: "Mousse au Chocolat",
            image: "image_mousse_chocolat",
            ingredients: ["Chocolat", "Oeuf"],
            steps: ["Faire fondre le chocolat au bain-marie", "Séparer les blancs des jaunes d'œufs", "Incorporer les jaunes d'œufs au chocolat fondu", "Monter les blancs en neige ferme", "Incorporer délicatement les blancs en neige au mélange chocolaté", "Répartir la mousse dans des ramequins", "Réfrigérer pendant au moins 3 heures avant de servir"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Brownies",
            image: "image_brownies",
            ingredients: ["Chocolat", "Farine", "Sucre", "Oeuf"],
            steps: ["Préchauffer le four à 180°C", "Faire fondre le chocolat au bain-marie", "Dans un bol, mélanger les œufs et le sucre jusqu'à blanchiment", "Ajouter le chocolat fondu et bien mélanger", "Incorporer la farine et mélanger jusqu'à obtenir une pâte homogène", "Verser la pâte dans un moule beurré et fariné", "Cuire au four pendant 25 à 30 minutes", "Laisser refroidir avant de découper en carrés"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Poudre de Cacao Maison",
            image: "image_poudre_cacao",
            ingredients: ["Chocolat"],
            steps: ["Préchauffer le four à 100°C", "Casser le chocolat en petits morceaux", "Étaler les morceaux de chocolat sur une plaque de cuisson", "Faire sécher au four pendant 1 heure", "Laisser refroidir", "Mixer les morceaux secs jusqu'à obtenir une poudre fine", "Conserver dans un bocal hermétique"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage au Chocolat",
            image: "image_masque_chocolat",
            ingredients: ["Chocolat", "Crème"],
            steps: ["Faire fondre le chocolat au bain-marie", "Ajouter la crème et bien mélanger", "Laisser tiédir le mélange", "Appliquer le masque sur le visage propre", "Laisser agir pendant 15 à 20 minutes", "Rincer à l'eau tiède", "Sécher délicatement le visage avec une serviette"],
            typeOfRecipe: .other
        ),
        // Recettes avec Beurre
        RecipeModel(
            title: "Beurre Maison",
            image: "image_beurre_maison",
            ingredients: ["Beurre"],
            steps: ["Verser de la crème fraîche dans un grand bol", "Battre la crème jusqu'à ce qu'elle épaississe et se sépare en beurre et babeurre", "Égoutter le babeurre et rincer le beurre sous l'eau froide", "Malaxer le beurre pour enlever l'excès de liquide", "Façonner le beurre et le conserver au réfrigérateur"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Cookies au Beurre",
            image: "image_cookies",
            ingredients: ["Beurre", "Farine", "Sucre", "Oeuf"],
            steps: ["Préchauffer le four à 180°C", "Mélanger le beurre ramolli et le sucre jusqu'à obtention d'un mélange crémeux", "Ajouter l'œuf et bien mélanger", "Incorporer la farine et mélanger jusqu'à obtenir une pâte homogène", "Former des boules de pâte et les aplatir légèrement sur une plaque de cuisson", "Cuire au four pendant 10 à 12 minutes jusqu'à ce que les bords soient dorés", "Laisser refroidir avant de déguster"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Beurre",
            image: "image_engrais_beurre",
            ingredients: ["Beurre"],
            steps: ["Récupérer les restes de beurre", "Faire fondre les restes de beurre dans une casserole", "Laisser refroidir et solidifier légèrement", "Ajouter au compost ou directement au sol de votre jardin pour enrichir la terre"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Baume à Lèvres au Beurre",
            image: "image_baume_levres",
            ingredients: ["Beurre", "Huile de coco"],
            steps: ["Faire fondre le beurre et l'huile de coco au bain-marie", "Bien mélanger pour obtenir une consistance homogène", "Verser le mélange dans un petit pot ou un tube à baume à lèvres", "Laisser refroidir et solidifier", "Utiliser pour hydrater les lèvres sèches"],
            typeOfRecipe: .other
        )
    ]
}

