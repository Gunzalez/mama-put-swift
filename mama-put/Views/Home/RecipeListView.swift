//
//  RecipeView.swift
//  mama-put
//
//  Created by Segun Konibire on 31/12/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @State private var allrecipes = [Recipe]()
    
    var body: some View {
        
        VStack {
            Text("Hello World again")
            
                        
        }.onAppear {
            allrecipes = JSONManager.load("recipes.json")
            print("ContentView appeared!")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
