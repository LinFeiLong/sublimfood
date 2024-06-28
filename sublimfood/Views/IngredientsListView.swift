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
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns, spacing: 10)  {
                VStack {
                    if displayResult {
                        ForEach(searchText.isEmpty ? ingredients : results, id: \.self) { ingredient in
                            Button(action: {
                                addIngredient(ingredient)
                            }, label: {
                                IngredientBtnView(label: ingredient,
                                                  image: "tomato",
                                                  action: true,
                                                  typeOfAction: .add)
                            })
                        }
                    } else {
                        ForEach(savedIngredients, id: \.self) { ingredient in
                            NavigationLink {
                                Text(ingredient)
                            } label: {
                                IngredientBtnView(label: ingredient,
                                                  image: "tomato",
                                                  action: true,
                                                  typeOfAction: displayResult ? .add : .navigate)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .navigationTitle("Mes ingrédients")
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
