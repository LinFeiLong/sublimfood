//
//  IngredientsListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import SwiftUI

struct IngredientsListView: View {
    
    @State var searchText = ""
    @State var ingredients: [String] = ["Tomate", "Pain", "Orange"]
    @State var results: [String] = []
    
    var body: some View {
        NavigationStack {
            HStack {
                ForEach(ingredients, id: \.self) { ingredient in
                    IngredientButtonView(action: {
                        //
                    }, imageName: "tomato", label: ingredient)
                }
            }
            .navigationTitle("Mes ingrédients")
        }
        .searchable(text: $searchText, prompt: "Ingrédient")
    }
}

#Preview {
    IngredientsListView()
}
