//
//  IngredientButtonView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

enum Variant {
    case add
    case to
}

struct IngredientButtonView: View {
    var action: () -> Void
    var imageName: String
    var label: String
    var variant: Variant
    
    let btnWidth: CGFloat = 184
    let btnHeight: CGFloat = 56
    let circleSize: CGFloat = 40
    let circleOffsetX: CGFloat = 20
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(
                action: action,
                label: {
                    ZStack {
                        if (variant == .to) { // Shadow of the circle
                            HStack {
                                Spacer()
                                ZStack {
                                    Circle()
                                        .frame(width: circleSize, height: circleSize)
                                        .foregroundColor(.white)
                                        .shadow(radius: 5)
                                }.offset(x: circleOffsetX)
                            }
                            .frame(width: btnWidth, height: btnHeight)
                            .background(.clear)
                        }
                        
                        HStack {
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: circleSize, height: circleSize)
                                .padding(.leading, 10)
                            Text(label)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            
                            
                        }
                        .frame(width: btnWidth, height: btnHeight)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        
                        if (variant == .add) {
                            HStack {
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 10)
                            }
                            .frame(width: btnWidth, height: btnHeight)
                            .background(.clear)
                        }
                        
                        if (variant == .to) {
                            HStack {
                                Spacer()
                                ZStack {
                                    Circle()
                                        .frame(width: circleSize, height: circleSize)
                                        .foregroundColor(.white)
                                    Circle()
                                        .frame(width: circleSize, height: circleSize)
                                        .foregroundColor(.orange)
                                        .opacity(0.2)
                                    Image(systemName: "plus")
                                        .foregroundColor(.orange)
                                }.offset(x: circleOffsetX)
                            }
                            .frame(width: btnWidth, height: btnHeight)
                            .background(.clear)
                        }
                    }
                }
                
            ).padding()
        }
    }
}


#Preview {
    VStack {
        IngredientButtonView(action: {}, imageName: "tomato", label: "Tomate",  variant: .add)
        IngredientButtonView(action: {}, imageName: "tomato", label: "Tomate",  variant: .to)
    }
}
