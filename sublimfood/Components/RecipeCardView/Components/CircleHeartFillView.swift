//
//  CircleHeartFillView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 26/06/2024.
//

import SwiftUI

struct CircleHeartFillView: View {
    var isHeartFilled: Bool
    
    var heartIcon: String { isHeartFilled ? "heart.fill" : "heart"
    }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 40, height: 40)
            
            Image(systemName: heartIcon)
                .resizable()
                .foregroundStyle(.red)
                .frame(width: 20, height: 20)
        }
        .padding(25)
    }
}

#Preview {
    CircleHeartFillView(isHeartFilled: false)
}
