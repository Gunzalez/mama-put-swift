//
//  RecipeTileView.swift
//  mama-put
//
//  Created by Segun Konibire on 14/01/2023.
//

import SwiftUI

struct RecipeTileView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ZStack{
            RecipeImageView(imageName: recipe.hero)
            
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
                

                Text(recipe.name)
                    .font(.title)

                Text("Cusine: \(recipe.cuisine.capitalized).")
                    .font(.body)
                
                Text("\(Image(systemName: "clock")) \(recipe.cookTime.capitalized) . \(Image(systemName: "person.circle")) \(recipe.serves) Serves")
                    .font(.body)
            }
            .foregroundColor(.white)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
        }
    }
}

struct RecipeTileView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTileView(recipe: Recipe.sampleData[0])
    }
}
