//
//  IngredientBtnView.swift
//  sublimfood
//
//  Created by Tarek Noubli on 27/06/2024.
//

import SwiftUI

enum Action {
    case add
    case navigate
}

struct IngredientBtnView: View {
    var label: String
    var image: String
    var action: Bool
    var typeOfAction: Action?
    
    var body: some View {
        HStack {
            Image(image)
            Text(label)
            if action {
                if typeOfAction == .add {
                    Image(systemName: "plus")
                        .foregroundColor(.orange)
                        .padding(10)
                        .background(Color.orange.opacity(0.2))
                        .clipShape(Circle())
                        .offset(CGSize(width: 10.0, height: 0.0))
                }
                if typeOfAction == .navigate {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
            }
        }
        .padding()
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerSize: CGSize(width: 10, height:10))
        )
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    VStack {
        IngredientBtnView(label: "Tomate", image: "tomato", action: false)
        IngredientBtnView(label: "Tomate", image: "tomato", action: true, typeOfAction: .add)
        IngredientBtnView(label: "Tomate", image: "tomato", action: true, typeOfAction: .navigate)
    }
    
}
