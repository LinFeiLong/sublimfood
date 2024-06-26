//
//  BtnShareView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 26/06/2024.
//

import SwiftUI

struct BtnShareView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Button(action: {
                //shareContent()
            })  {
                HStack {
                    
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 20,height:20)
                        .foregroundColor(.white)
                    Text ("Partager")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
            }
            Spacer()
        }
    }
}

#Preview {
    BtnShareView()
}
