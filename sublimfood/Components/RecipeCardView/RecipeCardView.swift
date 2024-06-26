//
//  RecipeCardView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 26/06/2024.
//

import SwiftUI

struct RecipeCardView: View {
    var image: String
    var title: String
    var displayCircleHeart: Bool
    var isHeartFilled: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 0) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                
                Text(title)
                    .bold()
                    .foregroundStyle(.black)
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .frame(height: 50)
                    .background(Color.white)
                    .padding([.leading, .trailing], 5)
                    .padding([.top, .bottom], 5)
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.45, height: 220)   .background(Color.white)
            .cornerRadius(25)
            .padding()
            .shadow(radius: 5)
            
            if displayCircleHeart { CircleHeartFillView(isHeartFilled: isHeartFilled)
            }
            
        }
    }
}

#Preview {
    RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
}
