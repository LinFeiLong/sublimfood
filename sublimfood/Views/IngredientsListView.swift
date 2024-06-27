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
    var results: [String] {
        if searchText.isEmpty {
            return ingredients
        } else {
            return ingredients.filter { $0.contains(searchText) }
        }
    }
    @State var displayResult = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(displayResult ? results : ingredients, id: \.self) { ingredient in
                    IngredientButtonView(action: {
                        //
                    }, imageName: "tomato", label: ingredient, variant: displayResult ? .add : .to)
                }
                Spacer()
            }
            .navigationTitle("Mes ingrédients")
        }
        .searchable(text: $searchText, isPresented: $displayResult, prompt: "Ingrédient")
    }
}

#Preview {
    IngredientsListView()
}
