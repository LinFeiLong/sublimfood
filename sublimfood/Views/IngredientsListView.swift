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
    @State var sheetIsPresented = false
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns, spacing: 20)  {
                //                if savedIngredients.isEmpty {
                //                        Text("Commencez à ajouter des ingredients avec la barre de recherche")
                //                            .font(.largeTitle)
                //                            .multilineTextAlignment(.center)
                //                }
                if displayResult {
                    ForEach(searchText.isEmpty ? ingredients : results, id: \.self) { ingredient in
                        IngredientButtonView(action: { addIngredient(ingredient) },
                                             imageName: "tomato",
                                             label: ingredient,
                                             variant: .add)
                    }
                } else {
                    ForEach(savedIngredients, id: \.self) { ingredient in
                        VStack {
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
            .toolbar {
                if !savedIngredients.isEmpty {
                    ToolbarItem(placement: .automatic) {
                        Button("Modifier liste") {
                            sheetIsPresented.toggle()
                        }
                    }
                }
            }
            .padding()
            Spacer()
        }
        .searchable(text: $searchText, isPresented: $displayResult, prompt: "Chercher un ingrédient")
        .sheet(isPresented: $sheetIsPresented, content: {
            List {
                ForEach(savedIngredients, id: \.self) { ingredient in
                    HStack {
                        Button(action: {
                            deleteIngredients(ingredient)
                        }, label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        })
                        Text(ingredient)
                    }
                }
            }
        })
    }
    
    private func addIngredient(_ ingredient: String) {
        guard !savedIngredients.contains(ingredient) else { return }
        withAnimation {
            ingredients.removeAll { $0 == ingredient }
            savedIngredients.append(ingredient)
            saveIngredients()
        }
    }
    
    private func deleteIngredients(_ ingredient: String) {
        withAnimation {
            ingredients.append(ingredient)
            savedIngredients.removeAll { $0 == ingredient }
            saveIngredients()
        }
    }
    
    private func saveIngredients() {
        UserDefaults.standard.savedIngredients = savedIngredients
    }
}

#Preview {
    IngredientsListView()
}
