//
//  RecipeView.swift
//  mama-put
//
//  Created by Segun Konibire on 31/12/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @State private var allpreviews = [Preview]()
    
    var body: some View {
        
        VStack {
            Text("Hello World again")
            
                        
        }.onAppear {
            allpreviews = JSONManager.load("previews.json")
            print("ContentView appeared!")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
