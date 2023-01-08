//
//  Recipe.swift
//  mama-put
//
//  Created by Segun Konibire on 10/12/2022.
//

import Foundation

struct Recipe: Decodable {
    var id: String
    var name: String
    var hero: String
    var images: [String]
    var description: [String]
    var cuisine: String
    var prepTime: String
    var cookTime: String
    var serves: Int
    var video: Video
    var instructions: [String]
    var extraDetail: [ExtraDetail]
    var ingredients: [Ingredient]
}

// MARK: - ExtraDetail
struct ExtraDetail: Decodable {
    var type: String
    var content: String
}

// MARK: - Ingredient
struct Ingredient: Decodable {
    var name: String
    var quantity: String
    var emoji: String
}

// MARK: - Video
struct Video: Decodable {
    var type: String
    var url: String
}


extension Recipe {
    static var sampleData: [Recipe] {
        [
            Recipe(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Eba",
                hero: "eba-main.png",
                images: ["eba-main.png","eba-eguisi.png","eba-okro.png"],
                description: ["Eba is a Nigerian staple food eaten all over the country and beyond. It is made from fried grated cassava (manioc) flour, commonly called as garri."],
                cuisine: "nigerian",
                prepTime: "None",
                cookTime: "30 mins",
                serves: 2,
                video: Video(type: "youtube", url: "https://www.youtube.com/watch?v=z0Dimja71F4"),
                instructions: ["Boil water and pour it into a bowl.", "Sprinkle the garri into the boiled water. continue until the eba thickens. You can add more garri if it is too soft or add water if it is very hard.","You should be able to mold it in small portions, dip into your delicious soup and swallow.","Eba is served with any one of the popular Nigerian soup. I think it is the most popular Nigerian swallow."],
                extraDetail: [
                    ExtraDetail(type: "header", content: "Some soups to pair with Eba"),
                    ExtraDetail(type: "content", content: "Almost any soup can pair but common ones are Okro, Efo-Refo, and Edikainkong."),
                    ExtraDetail(type: "header", content: "Useful Tip"),
                    ExtraDetail(type: "content", content: "Nigerian soup can be difficult to make, so buy separately, then simply make your own eba. You gte more food for cheaper."),
                    ExtraDetail(type: "content", content: "This is a very quick meal to make but heavy to digest, you might need a nap")
                ],
                ingredients: [
                    Ingredient(name: "Garri", quantity: "150 grams", emoji: "🍚"),
                    Ingredient(name: "Hot water", quantity: "150 grams", emoji: "💧")
                ])
        ]
    }
}
