//
//  TitleView.swift
//  sublimfood
//
//  Created by Fernand LIME on 26/06/2024.
//

import SwiftUI

struct TitleView: View {
    let title: String
    var color:Color
    
    var body: some View {
        ZStack(alignment: .leading){
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.black)
            Rectangle()
                .fill(color)
                .frame(width:20,height:5)
                .offset(y: 15)
        }
        .padding(.leading)
        .padding(.top)
    }
}

#Preview {
    VStack(alignment: .leading){
        TitleView(title: "Congelation", color: .orange)
        TitleView(title: "Recyclage", color: .orange)
        TitleView(title: "Cosmetique", color: .orange)
    }
}
