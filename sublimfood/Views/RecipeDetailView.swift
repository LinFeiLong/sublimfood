//
//  RecipeDetailView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: RecipeModel
    @State var showAlert = false
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                VStack(spacing: 20) {
                    VStack {
                        Button {
                            
                        } label: {
                            ButtonView(label: "Ajouter aux favoris", icon: "heart", fontColor: .white, color: .orange, borderColor: .orange)
                        }
                        
                        Button {
                            UIPasteboard.general.string = "#link"
                            showAlert = true
                        } label: {
                            ButtonView(label: "Partager la recette", icon: "square.and.arrow.up", fontColor: .orange, color: .white, borderColor: .orange)
                        }.alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Lien copié"),
                                message: Text("Le lien de la recette a bien été copié"),
                                dismissButton: .default(Text("OK"))
                            )
                        }
                        
                        
                    }
                    
                    Text("Ingrédients")
                        .font(.title)
                        .bold()
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            Button(action: {}, label: {
                                IngredientButtonView(imageName: ingredient.lowercased(), 
                                                     label: ingredient)
                            })
                            
                        }
                    }
                    .padding()
                    
                    Text("Préparation")
                        .font(.title)
                        .bold()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(Array(recipe.steps.enumerated()), id: \.element) { index, step in
                            Text("ETAPE \(index + 1)")
                                .bold()
                                .font(.title2)
                            Text(step)
                        }
                    }
                    .padding()
                }
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RecipeDetailView(recipe: Recipes.all[0])
}
