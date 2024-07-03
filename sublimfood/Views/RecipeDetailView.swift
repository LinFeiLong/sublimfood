//
//  RecipeDetailView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: RecipeModel
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State var showAlert = false
    var isFavorite: Bool {
        favoritesManager.favorites.contains { $0.title == recipe.title }
    }
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    init(recipe: RecipeModel) {
        self.recipe = recipe
        UIUtilities.configureNavigationBarAppearance()
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .frame(maxWidth: UIScreen.main.bounds.width)
                    .clipped()
                
                VStack(spacing: 20) {
                    VStack {
                        Button {
                            handleFavorite(recipe: recipe)
                        } label: {
                            ButtonView(label: isFavorite ? "Retirer des favoris" : "Ajouter aux favoris",
                                       icon: isFavorite ? "heart.fill" : "heart",
                                       fontColor: .white,
                                       color: .orange,
                                       borderColor: .orange)
                        }
                        .animation(.default, value: 2)
                        
                        ShareLinkBtnView()
                    }
                    
                    Text("Ingrédients")
                        .font(.title)
                        .bold()
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Button(action: {}, label: {
                                IngredientButtonView(
                                    imageName: ingredient.lowercased(),
                                    label: ingredient
                                )
                                
                            })
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .padding()
                    
                    Text("Préparation")
                        .font(.title)
                        .fontWeight(.bold)
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(Array(recipe.steps.enumerated()), id: \.element) { index, step in
                            Text("ETAPE \(index + 1)")
                                .frame(width: UIScreen.main.bounds.width - 30,alignment: .leading)
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text(step)
                                .frame(width:UIScreen.main.bounds.width - 30,alignment: .leading)
                                .fontWeight(.light)
                            Divider()
                        }
                    }
                    .padding()
                    
                }
                .padding()
            }
        }
        .navigationTitle(recipe.title)
        .accentColor(.white)
    }
    
    private func handleFavorite(recipe: RecipeModel) {
        withAnimation {
            if isFavorite {
                favoritesManager.favorites.removeAll { $0.title == recipe.title }
            } else {
                favoritesManager.favorites.append(recipe)
            }
        }
    }
    
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipes.all[0])
            .environmentObject(FavoritesManager())
    }
}
