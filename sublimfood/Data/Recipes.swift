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
            steps: ["Couper les tomates", "Ajouter les oignons", "Assaisonner"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Sauce Tomate Maison",
            image: "image_sauce_tomate",
            ingredients: ["Tomate", "Ail", "Huile d'olive"],
            steps: ["Faire revenir l'ail", "Ajouter les tomates", "Mijoter"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Peaux de Tomates Séchées",
            image: "peaux_sechees",
            ingredients: ["Tomate"],
            steps: ["Sécher les peaux au four", "Mixer en poudre"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Engrais à base de Tomates",
            image: "image_engrais_tomates",
            ingredients: ["Tomate"],
            steps: ["Sécher les peaux", "Ajouter au compost"],
            typeOfRecipe: .other
        ),
        // Recettes avec Orange
        RecipeModel(
            title: "Gâteau aux Oranges",
            image: "image_gateau_oranges.jpg",
            ingredients: ["Orange", "Farine", "Sucre", "Oeuf"],
            steps: ["Mélanger les ingrédients", "Cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Glaçons de Jus d'Oranges",
            image: "image_glacons_oranges",
            ingredients: ["Orange"],
            steps: ["Verser le jus dans des moules", "Congeler"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Poudre de Peaux d'Orange",
            image: "image_poudre_peaux_orange",
            ingredients: ["Orange"],
            steps: ["Sécher les peaux", "Mixer en poudre"],
            typeOfRecipe: .other
        ),
        RecipeModel(
            title: "Nettoyant Naturel à l'Orange",
            image: "image_nettoyant_orange",
            ingredients: ["Orange", "Vinaigre blanc"],
            steps: ["Faire macérer les peaux dans le vinaigre", "Filtrer"],
            typeOfRecipe: .other
        ),
        // Recettes avec Pomme de terre
        RecipeModel(
            title: "Purée de Pommes de Terre",
            image: "image_puree_pommes",
            ingredients: ["Pomme de terre", "Beurre", "Lait"],
            steps: ["Cuire les pommes de terre", "Écraser avec le beurre et le lait"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Frites Maison",
            image: "image_frites",
            ingredients: ["Pomme de terre", "Huile"],
            steps: ["Couper les pommes de terre", "Frire dans l'huile"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Masque Visage à la Pomme de Terre",
            image: "image_masque_pdt",
            ingredients: ["Pomme de terre"],
            steps: ["Râper la pomme de terre", "Appliquer sur le visage"],
            typeOfRecipe: .other
        ),
        RecipeModel(
            title: "Engrais Liquide à base de Pomme de Terre",
            image: "image_engrais_pdt",
            ingredients: ["Pomme de terre"],
            steps: ["Utiliser l'eau de cuisson pour arroser les plantes"],
            typeOfRecipe: .upcycling
        ),
        // Recettes avec Carotte
        RecipeModel(
            title: "Soupe de Carottes",
            image: "image_soupe_carottes",
            ingredients: ["Carotte", "Oignon", "Bouillon"],
            steps: ["Cuire les carottes et les oignons", "Mixer avec le bouillon"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Carottes Râpées",
            image: "image_carottes_rapees",
            ingredients: ["Carotte", "Citron", "Huile d'olive"],
            steps: ["Râper les carottes", "Assaisonner avec le citron et l'huile"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Carottes",
            image: "image_engrais_carottes",
            ingredients: ["Carottes"],
            steps: ["Sécher les épluchures", "Ajouter au compost"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à la Carotte",
            image: "image_masque_carotte",
            ingredients: ["Carotte"],
            steps: ["Râper la carotte", "Appliquer sur le visage"],
            typeOfRecipe: .other
        ),
        // Recettes avec Pain
        RecipeModel(
            title: "Pain Perdu",
            image: "image_pain_perdu",
            ingredients: ["Pain", "Lait", "Oeuf", "Sucre"],
            steps: ["Tremper le pain dans le lait et l'oeuf", "Cuire à la poêle"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Croûtons Maison",
            image: "image_croutons",
            ingredients: ["Pain", "Huile d'olive", "Herbes"],
            steps: ["Couper le pain en dés", "Assaisonner et cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Chapelure de pain sec Maison",
            image: "image_chapelure",
            ingredients: ["Pain"],
            steps: ["Mixer le pain sec en poudre"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Engrais à base de Pain",
            image: "image_engrais_pain",
            ingredients: ["Pain"],
            steps: ["Faire tremper le pain dans l'eau", "Utiliser pour arroser les plantes"],
            typeOfRecipe: .upcycling
        ),
        // Recettes avec Banane
        RecipeModel(
            title: "Banana Bread",
            image: "image_banana_bread",
            ingredients: ["Banane", "Farine", "Sucre", "Oeuf"],
            steps: ["Mélanger les ingrédients", "Cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Smoothie Banane",
            image: "image_smoothie_banane",
            ingredients: ["Banane", "Lait", "Miel"],
            steps: ["Mixer les ingrédients"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Peaux de Banane",
            image: "image_engrais_banane",
            ingredients: ["Banane"],
            steps: ["Faire tremper les peaux dans l'eau", "Utiliser l'eau pour arroser"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Capillaire à la Banane",
            image: "image_masque_capillaire",
            ingredients: ["Banane", "Huile d'olive"],
            steps: ["Mixer la banane et l'huile", "Appliquer sur les cheveux"],
            typeOfRecipe: .other
        ),
        // Recettes avec Oeuf
        RecipeModel(
            title: "Omelette",
            image: "image_omelette",
            ingredients: ["Oeuf", "Lait", "Fromage"],
            steps: ["Battre les oeufs", "Cuire avec le lait et le fromage"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Crêpes",
            image: "image_crepes",
            ingredients: ["Oeuf", "Farine", "Lait"],
            steps: ["Mélanger les ingrédients", "Cuire à la poêle"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Coquilles d'Oeuf",
            image: "image_engrais_coquilles",
            ingredients: ["Oeuf"],
            steps: ["Écraser les coquilles", "Ajouter au sol"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à l'Oeuf",
            image: "image_masque_oeuf",
            ingredients: ["Oeuf"],
            steps: ["Battre l'oeuf", "Appliquer sur le visage"],
            typeOfRecipe: .other
        ),
        // Recettes avec Citrouille
        RecipeModel(
            title: "Soupe de Citrouille",
            image: "image_soupe_citrouille",
            ingredients: ["Citrouille", "Oignon", "Bouillon"],
            steps: ["Cuire la citrouille et l'oignon", "Mixer avec le bouillon"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Gâteau à la Citrouille",
            image: "image_gateau_citrouille",
            ingredients: ["Citrouille", "Farine", "Sucre", "Oeuf"],
            steps: ["Mélanger les ingrédients", "Cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Citrouille",
            image: "image_engrais_citrouille",
            ingredients: ["Citrouille"],
            steps: ["Sécher les épluchures", "Ajouter au compost"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage à la Citrouille",
            image: "image_masque_citrouille",
            ingredients: ["Citrouille"],
            steps: ["Râper la citrouille", "Appliquer sur le visage"],
            typeOfRecipe: .other
        ),
        // Recettes avec Chocolat
        RecipeModel(
            title: "Mousse au Chocolat",
            image: "image_mousse_chocolat",
            ingredients: ["Chocolat", "Oeuf"],
            steps: ["Faire fondre le chocolat", "Incorporer les oeufs"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Brownies",
            image: "image_brownies",
            ingredients: ["Chocolat", "Farine", "Sucre", "Oeuf"],
            steps: ["Mélanger les ingrédients", "Cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Poudre de Cacao Maison",
            image: "image_poudre_cacao",
            ingredients: ["Chocolat"],
            steps: ["Mixer le chocolat en poudre"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Masque Visage au Chocolat",
            image: "image_masque_chocolat",
            ingredients: ["Chocolat", "Crème"],
            steps: ["Mélanger le chocolat fondu avec la crème", "Appliquer sur le visage"],
            typeOfRecipe: .other
        ),
        // Recettes avec Beurre
        RecipeModel(
            title: "Beurre Maison",
            image: "image_beurre_maison",
            ingredients: ["Beurre"],
            steps: ["Battre la crème jusqu'à obtention du beurre"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Cookies au Beurre",
            image: "image_cookies",
            ingredients: ["Beurre", "Farine", "Sucre", "Oeuf"],
            steps: ["Mélanger les ingrédients", "Cuire au four"],
            typeOfRecipe: .cook
        ),
        RecipeModel(
            title: "Engrais à base de Beurre",
            image: "image_engrais_beurre",
            ingredients: ["Beurre"],
            steps: ["Faire fondre les restes", "Ajouter au compost"],
            typeOfRecipe: .upcycling
        ),
        RecipeModel(
            title: "Baume à Lèvres au Beurre",
            image: "image_baume_lèvres.jpg",
            ingredients: ["Beurre", "Huile de coco"],
            steps: ["Mélanger le beurre fondu avec l'huile", "Mettre dans un pot"],
            typeOfRecipe: .other
        )
    ]
}
