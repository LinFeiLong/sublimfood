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
    var color: Color
    var body: some View {
        HStack {
            
            Image(systemName: icon)
                .resizable()
                .frame(width: 20,height:20)
                .foregroundColor(.white)
            Text (label)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .padding()
        .background(color)
        .border(Color.black,width: 1)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height:10)))
    }
    }

#Preview {
    VStack {
        ButtonView(label: "partager", icon: "square.and.arrow.up", color: .orange)
        ButtonView(label: "Ajouter aux Favoris", icon: "heart", color:  .orange)
    }
}
// iconSF: "","square.and.arrow.up"
