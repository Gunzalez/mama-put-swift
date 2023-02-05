//
//  Preview.swift
//  mama-put
//
//  Created by Segun Konibire on 22/01/2023.
//

import Foundation

struct Preview: Decodable, Hashable  {
    var id: String
    var name: String
    var hero: String
    var cuisine: String
    var prepTime: String
    var cookTime: String
    var serves: Int
}

extension Preview {
    static var sampleData: [Preview] {
        [
            Preview(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Eba",
                hero: "eba-main",
                cuisine: "nigerian",
                prepTime: "None",
                cookTime: "30 mins",
                serves: 2),
            Preview(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Jollof Rice - Nigerian",
                hero: "jollof-main",
                cuisine: "nigerian",
                prepTime: "15 mins",
                cookTime: "1h 15mins",
                serves: 5)
                
        ]
    }
}
