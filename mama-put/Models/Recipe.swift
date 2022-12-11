//
//  Recipe.swift
//  mama-put
//
//  Created by Segun Konibire on 10/12/2022.
//

import Foundation

struct Recipe: Equatable, Hashable, Codable {
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
struct ExtraDetail: Equatable, Hashable, Codable {
    var type: String
    var content: String
}

// MARK: - Ingredient
struct Ingredient: Equatable, Hashable, Codable {
    var name: String
    var quantity: String
    var emoji: String
}

// MARK: - Video
struct Video: Equatable, Hashable, Codable {
    var type: String
    var url: String
}
