//
//  IngredientsListView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 26/06/2024.
//

import SwiftUI

struct IngredientsListView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                EmptyView()
            }
            .navigationTitle("Mes ingrédients")
        }
        .searchable(text: $searchText, prompt: "Ingrédient")
    }
}

#Preview {
    IngredientsListView()
}
