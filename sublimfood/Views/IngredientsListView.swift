//
//  IngredientsListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import SwiftUI

private func searchBarImage() -> UIImage {
    let image = UIImage(systemName: "magnifyingglass")
    return image!.withTintColor(UIColor(.white), renderingMode: .alwaysOriginal)
}

struct IngredientsListView: View {
    
    @State var searchText = ""
    @State var ingredients = Ingredients.all
    @State private var savedIngredients: [String] = UserDefaults.standard.savedIngredients
    var results: [String] {
        searchText.isEmpty ? ingredients : ingredients.filter { $0.lowercased().contains(searchText.lowercased()) } }
    @State var isSearchActive = true
    @State var sheetIsPresented = false
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    init() {
        UIUtilities.configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if savedIngredients.isEmpty && !isSearchActive {
                    EmptyIngredientListView()
                }
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns, spacing: 20)  {
                        if isSearchActive {
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
                        }
                        else {
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
                    }.padding()
                }
                .navigationTitle("Mes ingrédients")
                .toolbar { toolbarContent }
                .searchable(text: $searchText,
                            isPresented: $isSearchActive,
                            placement: .navigationBarDrawer(displayMode: .always) ,
                            prompt: "Chercher un ingrédient" )
                .onAppear {
                    // Customize search bar appearance
                    if let searchTextField = UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]) as? UITextField {
                        searchTextField.attributedPlaceholder = NSAttributedString(
                            string: "Chercher un ingrédient",
                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
                        )
                        searchTextField.textColor = UIColor.white
                    }
                    UISearchBar.appearance().barTintColor = UIColor.white
                    UISearchBar.appearance().tintColor = UIColor.white
                    UISearchBar.appearance().setImage(searchBarImage(), for: .search, state: .normal)
                }
            }
            .sheet(isPresented: $sheetIsPresented) { editIngredientsSheet }
            .onAppear(perform: {
                isSearchActive = false
            })
        }
    }
    
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .automatic) {
            if !savedIngredients.isEmpty {
                Button("Modifier liste") {
                    sheetIsPresented.toggle()
                }
                .foregroundColor(.white)
            }
        }
    }
    
    private var editIngredientsSheet: some View {
        VStack {
            Button(action: { sheetIsPresented = false }) {
                Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }
            List {
                ForEach(savedIngredients, id: \.self) { ingredient in
                    HStack {
                        Button(action: { deleteIngredients(ingredient) }) {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                        Text(ingredient)
                    }
                }
            }
        }
        .padding(20)
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


