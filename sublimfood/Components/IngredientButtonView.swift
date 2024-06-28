//
//  IngredientButtonView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

enum Variant {
    case initial
    case add
    case to
}

struct IngredientButtonView: View {
    var action: () -> Void
    var imageName: String
    var label: String
    var variant: Variant?
    
    let circleSize: CGFloat = 40
    let circleOffsetX: CGFloat = 20
    let btnWidth: CGFloat = .infinity
    let btnHeight: CGFloat = 56
    
    var body: some View {
        HStack {
            ZStack(alignment: .topTrailing) {
                Button(
                    action: action,
                    label: {
                        ZStack {
                            if (variant == .add) { // Shadow of the circle
                                HStack {
                                    Spacer()
                                    ZStack {
                                        Circle()
                                            .frame(width: circleSize, height: circleSize)
                                            .foregroundColor(.white)
                                            .shadow(radius: 5)
                                    }.offset(x: 20)
                                }
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
                            
                            if (variant == .to) {
                                HStack {
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 10)
                                }
                                .background(.clear)
                            }
                            
                            if (variant == .add) {
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
                                    }
                                }
                                .offset(x: 20)
                            }
                        }.frame(width: btnWidth, height: btnHeight)
                    }
                    
                )
            }
            if (variant == .add) {
                Spacer(minLength: 20)
            }
        }
    }
}


#Preview {
    VStack(spacing: 24) {
        IngredientButtonView(
            action: {},
            imageName: "tomato",
            label: "Tomate"
        )
        IngredientButtonView(
            action: {},
            imageName: "tomato",
            label: "Tomate",
            variant: .add
        )
        IngredientButtonView(
            action: {},
            imageName: "tomato",
            label: "Tomate",
            variant: .to
        )
    }.padding()
}
