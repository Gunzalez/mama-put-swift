//
//  RecipeImageView.swift
//  mama-put
//
//  Created by Segun Konibire on 14/01/2023.
//

import SwiftUI

struct RecipeImageView: View {
    
    var imageName: String
    
    var body: some View {
        ZStack{
            
            Image(imageName)
                .resizable()
                .scaledToFill()
            
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                    )
                    
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: 320)
        .clipped()
    }
}

struct RecipeImageView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeImageView(imageName: "eba-main")
    }
}
