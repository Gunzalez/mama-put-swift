//
//  RecipeTileView.swift
//  mama-put
//
//  Created by Segun Konibire on 14/01/2023.
//

import SwiftUI

struct RecipeTileView: View {
    
    var preview: Preview
    
    var body: some View {
        ZStack{
            RecipeImageView(imageName: preview.hero)
            
            VStack(alignment: .leading) {
                HStack() {
                    Text("6 locations")
                        .foregroundColor(.primary)
                        .padding(14)
                        .background(RoundedRectangle(
                            cornerRadius: 12,
                            style: RoundedCornerStyle.continuous
                        ))
                    
                    Spacer()
                    
                    Image(systemName: "star")
                        .font(.system(size: 42))
                        .foregroundColor(Color("mamaOrange"))
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .trailing)
                
                Spacer()
                
                Text(preview.name)
                    .font(.title)

                Text("Cusine: \(preview.cuisine.capitalized).")
                    .font(.body)
                
                Text("\(Image(systemName: "clock")) \(preview.cookTime.capitalized) \(Image(systemName: "person.circle")) \(preview.serves) Serves")
                    .font(.body)
            }
            .foregroundColor(.white)
//            .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
            .padding(.vertical, 10)
        }
        
    }
}

struct RecipeTileView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTileView(preview: Preview.sampleData[0])
    }
}
