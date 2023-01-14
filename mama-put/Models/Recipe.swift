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
                hero: "eba-main",
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
                ]),
            Recipe(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Jollof Rice - Nigerian",
                hero: "jollof-main",
                images: ["jollof-main.png","jollof-chicken.png","jollof-beef.png"],
                description: ["Jollof rice is a West African dish that’s a staple in most households. It is a dish made with rice, tomatoes, tomato paste, onions, red bell pepper, scotch bonnet peppers, salt, and spices. Nigerians use the long grain rice that has been parboiled. Other versions i.e. Ghanaian Jollof will use basmati or jasmine rice."],
                cuisine: "nigerian",
                prepTime: "15 mins",
                cookTime: "1h 15mins",
                serves: 5,
                video: Video(type: "youtube", url: "https://www.youtube.com/watch?v=z0Dimja71F4"),
                instructions: ["Blend your tomatoes, red pepper, scotch bonnet peppers in a food processor or blender for about 45 seconds, make sure that everything is blended well.",
                               "In a medium sized pot, heat your oil on medium-high heat. Once the oil is heated add the onions you set aside and fry just until they turn golden brown. Once the onions, have turned brown in color add the tomato paste and fry for 2-3 minutes. Then add the blended tomato mixture (reserve about 1/4 cup and set aside) and fry the mixture with the onions and tomato paste for about 30 minutes. Make sure you stir consistently so that the tomato mixture does not burn.",
                               "After 30 minutes, turn the heat down to medium, and add the chicken stock. Mix and add your seasonings (salt, curry powder, thyme, all purpose seasoning, and the Knorr stock cube). Continue to boil for 10 minutes.",
                               "Add the parboiled rice to the pot. Mix it very well with the tomato stew. At this point if you need to add water so that the rice is level with the tomato mixture/chicken stock go ahead and do so. Add the bay leaves, cover the pot, and cook on medium to low heat for 15-30 minutes.",
                              "When the liquid has almost dried up add the remaining tomato stew, cover, and let it cook for another 5-10 minutes heat until the liquid has completely dried up. Turn off the heat, mix thoroughly, and your Jollof Rice is ready to be eaten!"],
                extraDetail: [
                    ExtraDetail(type: "header", content: "Tips on cooking the BEST Jollof Rice"),
                    ExtraDetail(type: "content", content: "It is key to use parboiled rice so that you don’t end up with mushy rice in the end."),
                    ExtraDetail(type: "content", content: "When cooking the tomato stew, you can tell when it is done because the oil will rise to the top. It will be a deep red color and the bitter taste of the tomatoes has been cooked out."),
                    ExtraDetail(type: "content", content: "Reserve 1/4th of the tomato mixture and add it at the end to help prevent the rice from burning. Also, it gives the rice that beautiful red color we all know and love."),
                    ExtraDetail(type: "content", content: "Cover the top of the pot with plastic wrap before putting the lid on to help keep all the steam in the pot.")
                ],
                ingredients: [
                    Ingredient(name: "Medium sized Roma tomatoes, roughly chopped", quantity: "5", emoji: "🍅"),
                    Ingredient(name: "Large Bell Pepper, roughly chopped", quantity: "1", emoji: "🫑"),
                    Ingredient(name: "Medium sized onion, roughly chopped, set aside", quantity: "1", emoji: "🧅"),
                ])
        ]
    }
}
