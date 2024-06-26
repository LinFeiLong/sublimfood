//
//  IngredientButtonView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

struct IngredientButtonView: View {
    var action: () -> Void
    var imageName: String
    var label: String
    
    var body: some View {
        Button(
            action: action,
            label: {
                HStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40) // Adjust the size as needed
                        .padding(.leading, 10)
                    Text(label)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                    ZStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                            .opacity(0.2)
                        Image(systemName: "plus")
                            .foregroundColor(.orange)
                            
                    }.padding(.leading, 10)
                }
                .frame(width: 184, height: 56)
                .background(
                    RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                        .fill(Color.white)
                )
            }
        )
    }
}

#Preview {
    ZStack {
        Color.gray.edgesIgnoringSafeArea(.all) // Background screen color
        IngredientButtonView(action: {}, imageName: "tomato", label: "Tomate")
    }
}
