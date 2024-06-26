//
//  SharemyFavoriteView.swift
//  sublimfood
//
//  Created by Apprenant 48 on 26/06/2024.
//

import SwiftUI

struct SharemyFavoriteView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Button(action: {
                //shareContent()
            })  {
                HStack {
                    
                    
                    Text ("Ajouter aux Favoris")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20,height:20)
                        .foregroundColor(.white)
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


#Preview {
    SharemyFavoriteView()
}
