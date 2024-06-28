//
//  RecipesListView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 28/06/2024.
//

import SwiftUI

struct RecipesListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 100)
                    .overlay(
                        HStack {
                            Button(action: {
                                
                                print("Back button tapped")
                            }) {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                            .padding(.leading, 16)
                            
                            Spacer()
                            
                            Text("Recettes")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                print("Add button tapped")
                            }) {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                            .padding(.trailing, 16)
                        }
                            .padding(.horizontal)
                    )
                    .cornerRadius(10)
                    .padding()
                
                Spacer()
            }
        }.toolbarBackground(.orange)
        
    }
}

#Preview {
    RecipesListView()
}

