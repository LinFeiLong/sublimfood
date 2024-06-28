//
//  IngredientsListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import SwiftUI

struct IngredientsListView: View {
    
    @State var searchText = ""
    @State var ingredients = Ingredients.all
    @State private var savedIngredients: [String] = UserDefaults.standard.savedIngredients
    var results: [String] {
        if searchText.isEmpty {
            return ingredients
        } else {
            return ingredients.filter { $0.contains(searchText) }
        }
    }
    @State var displayResult = false
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns, spacing: 20)  {
                if displayResult {
                    ForEach(searchText.isEmpty ? ingredients : results, id: \.self) { ingredient in
                        IngredientButtonView(action: {
                            addIngredient(ingredient)
                        }, imageName: "tomato", label: ingredient, variant: .add)
                    }
                } else {
                    ForEach(savedIngredients, id: \.self) { ingredient in
                        NavigationLink {
                            Text(ingredient)
                        } label: {
//                            IngredientButtonView(label: ingredient,
//                                              image: "tomato",
//                                              action: true,
//                                              typeOfAction: displayResult ? .add : .navigate)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle("Mes ingrédients")
            .padding()

            Spacer()
        }
        .searchable(text: $searchText, isPresented: $displayResult, prompt: "Chercher un ingrédient")
    }
    
    private func addIngredient(_ ingredient: String) {
        guard !savedIngredients.contains(ingredient) else { return }
        savedIngredients.append(ingredient)
        saveIngredients()
    }
    
    private func saveIngredients() {
        UserDefaults.standard.savedIngredients = savedIngredients
    }
}

#Preview {
    IngredientsListView()
}
