//
//  SearchView.swift
//  mama-put
//
//  Created by Segun Konibire on 14/01/2023.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 22))

                TextField("Search recipes", text: $searchText)
                    .foregroundColor(Color.primary)
            }
            .padding(16)
            .background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 16))
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant("wheh"))
    }
}
