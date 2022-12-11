//
//  Shop.swift
//  mama-put
//
//  Created by Segun Konibire on 10/12/2022.
//

import Foundation

struct Shop: Equatable, Hashable, Codable {
    var id: String
    var name: String
    var address: String
    var postCode: String
    var phone: String
    var service: String
    var meals: [Meal]
}


// MARK: - Meal
struct Meal: Equatable, Hashable, Codable {
    var recipeId: String
    var price: String
}
