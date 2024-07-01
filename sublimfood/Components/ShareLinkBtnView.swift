//
//  ShareLinkBtnView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 01/07/2024.
//

import SwiftUI

struct ShareLinkBtnView: View {
    var body: some View {
        ShareLink(item: URL(string: "https://developer.apple.com/documentation/swiftui/sharelink")!) {
            HStack {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.orange)
                
                Text("Partager la recette")
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orange, lineWidth: 2)
            )
        }
    }
}

#Preview {
    ShareLinkBtnView()
}

