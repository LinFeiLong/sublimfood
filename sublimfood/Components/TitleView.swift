//
//  TitleView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //                HStack {
            //                    CategoryView(title: "Congélation", imageName: "congelation", subcategories: ["Légumes variés", "Glaces de petits pois", "Sorbet de framboises"])
            //                }
            //                HStack {
            //                    CategoryView(title: "Recyclage", imageName: "recyclage", subcategories: ["Composte", "Bouillons", "Vermicompost"])
            //                }
            //                HStack {
            //                    CategoryView(title: "Cosmétiques", imageName: "cosmetiques", subcategories: [])
            //                }
        }
    }
}

struct CategoryView: View {
    let title: String
    let imageName: String
    let subcategories: [String]
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.orange)
                .cornerRadius(5)
                .padding(.bottom, 5)
            
            ForEach(subcategories, id: \.self) { subcategory in
                HStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Text(subcategory)
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
                .padding(.bottom, 5)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}
