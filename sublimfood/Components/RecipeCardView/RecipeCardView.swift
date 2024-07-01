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
            VStack(alignment: .center, spacing: 0) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                
                Text(title)
                    .bold()
                    .foregroundColor(.black)
                    .font(.headline)
                    .frame(maxWidth: .infinity, minHeight: 50, alignment: .leading)
                    .padding([.leading, .trailing], 10)
                    .background(Color.white)
                    .padding([.top, .bottom], 5)
                    .multilineTextAlignment(.leading)
            }.frame(width: UIScreen.main.bounds.width * 0.45, height: 220)   .background(Color.white)
            
            if displayCircleHeart {
                CircleHeartFillView(isHeartFilled: isHeartFilled)
                    .offset(x: -10, y: 10)
            }
        }
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

#Preview {
    RecipeCardView(image: "boulettes_pdt", title: "Boulettes de Pommes de Terre", displayCircleHeart: true, isHeartFilled: true)
}
