//
//  ButtonView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 27/06/2024.
//

import SwiftUI

struct ButtonView: View {
    
    var label: String
    var icon: String
    var fontColor: Color
    var color: Color
    var borderColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 20,height:20)
            Text (label)
                .fontWeight(.bold)
        }
        .foregroundStyle(fontColor)
        .padding()
        .background(color)
        .clipShape(
            RoundedRectangle(cornerSize: CGSize(width: 10, height:10))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: 2)
        )
    }
}

#Preview {
    VStack {
        ButtonView(label: "partager", icon: "square.and.arrow.up", fontColor: .black, color: .orange, borderColor: .black)
        ButtonView(label: "Ajouter aux Favoris", icon: "heart", fontColor: .orange, color:  .white, borderColor: .orange)
    }
}
// iconSF: "","square.and.arrow.up"
