//
//  RecipeView.swift
//  mama-put
//
//  Created by Segun Konibire on 31/12/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @State private var searchText = ""
    @State private var Previews = [Preview]()
    @State private var Results = [Result]()
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                SearchView(searchText: $searchText)
                ScrollView(showsIndicators: false){
                    LazyVStack(alignment: .leading, spacing: 10){
                        BannerView(noOfRecipies: "18")
                        
                        ForEach(Previews, id: \.self) { preview in
                            NavigationLink(destination: Text(preview.name)) {
                                RecipeTileView(preview: preview)
                            }
                        }
                        
                        
                    }
                }
            }
            .animation(.easeInOut, value: searchText)
            .padding(.horizontal)
            .navigationTitle("Mama Put")
        }.onAppear {
            Previews = JSONManager.load("previews.json")
            print("ContentView appeared!")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
