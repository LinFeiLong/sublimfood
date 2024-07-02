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
            return ingredients.filter { $0.lowercased().contains(searchText.lowercased()) }
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
            if savedIngredients.isEmpty {
                EmptyIngredientListView()
            }
            LazyVGrid(columns: columns, spacing: 20)  {
                if displayResult {
                    ForEach(searchText.isEmpty ? ingredients : results, id: \.self) { ingredient in
                        if !savedIngredients.contains(ingredient) {
                            Button(action: { addIngredient(ingredient) },
                                   label: {
                                IngredientButtonView(
                                    imageName: ingredient.lowercased(),
                                    label: ingredient,
                                    variant: .add
                                )
                            })
                        }
                    }
                } else {
                    ForEach(savedIngredients, id: \.self) { ingredient in
                        NavigationLink {
                            RecipesListView(ingredient: ingredient)
                        } label: {
                            IngredientButtonView(
                                imageName: ingredient.lowercased(),
                                label: ingredient,
                                variant: .navigation
                            )
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
                        .foregroundColor(.white)
                    }
                }
            }
            .padding()
            Spacer()
        }
        .searchable(text: $searchText, isPresented: $displayResult, prompt: "Chercher un ingrédient")
        .sheet(isPresented: $sheetIsPresented, content: {
            VStack {
                Button(action: {
                    sheetIsPresented = false
                }, label: {
                    Image(systemName: "checkmark")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                })
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
            }
        })
    }
    
    private func addIngredient(_ ingredient: String) {
        withAnimation {
            savedIngredients.append(ingredient)
            saveIngredients()
        }
    }
    
    private func deleteIngredients(_ ingredient: String) {
        withAnimation {
            savedIngredients.removeAll { $0 == ingredient }
            saveIngredients()
        }
    }
    
    private func saveIngredients() {
        UserDefaults.standard.savedIngredients = savedIngredients
    }
}

struct EmptyIngredientListView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "frying.pan.fill")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.orange)
            Text("Aucun ingredient enregistré")
                .fontWeight(.thin)
            Text("Utilisez la barre de recherche pour en ajouter")
                .padding()
            Spacer()
        }
    }
}


struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsListView()
            .environmentObject(FavoritesManager())
    }
}
