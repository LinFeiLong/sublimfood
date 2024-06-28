//
//  IngredientButtonView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

enum Variant {
    case add
    case navigation
}

let CIRCLE_SIZE: CGFloat = 40

private struct CircleWithPlus: View {
    let foregroundColor: Color = .orange
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: CIRCLE_SIZE, height: CIRCLE_SIZE)
                .foregroundColor(.white)
            Circle()
                .frame(width: CIRCLE_SIZE, height: CIRCLE_SIZE)
                .foregroundColor(foregroundColor)
                .opacity(0.2)
            Image(systemName: "plus")
                .foregroundColor(foregroundColor)
        }
    }
}

private struct CircleWithShadow: View {
    var body: some View {
        Circle()
            .frame(width: CIRCLE_SIZE, height: CIRCLE_SIZE)
            .foregroundColor(.white)
            .shadow(radius: 5)
            .offset(x: 20)
    }
}

private struct IngredientButton: View {
    var imageName: String
    var label: String
    
    let circleOffsetX: CGFloat = 20
    let btnWidth: CGFloat = .infinity
    let btnHeight: CGFloat = 56
    let imageSize: CGFloat = 40
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageSize, height: imageSize)
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
    }
}

struct IngredientButtonView: View { // TODO: Modify to Ingredient View
    var imageName: String
    var label: String
    var variant: Variant?
    
    var body: some View {
        HStack {
            ZStack(alignment: .topTrailing) {
                switch variant {
                case .some(.add):
                    ZStack {
                        HStack {
                            Spacer()
                            CircleWithShadow()
                        }
                        IngredientButton(
                            imageName: imageName,
                            label: label
                        )
                        HStack {
                            Spacer()
                            CircleWithPlus().offset(x: 20)
                        }
                    }
                    
                case .some(.navigation):
                    ZStack {
                        IngredientButton(
                            imageName: imageName,
                            label: label
                        )
                        HStack {
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.trailing, 10)
                        }
                    }
                default:
                    IngredientButton(
                        imageName: imageName,
                        label: label
                    )
                }
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
            imageName: "tomato",
            label: "Tomate"
        )
        IngredientButtonView(
            imageName: "tomato",
            label: "Tomate",
            variant: .add
        )
        IngredientButtonView(
            imageName: "tomato",
            label: "Tomate",
            variant: .navigation
        )
    }.padding()
}
