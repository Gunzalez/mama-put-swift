//
//  Result.swift
//  mama-put
//
//  Created by Segun Konibire on 05/02/2023.
//

import Foundation

struct Result: Decodable {
    var id: String
    var name: String
    var hero: String
}


extension Result {
    static var sampleData: [Result] {
        [
            Result(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Eba",
                hero: "eba-main"),
            Result(
                id: "recipe-638fe4b81a5caa5dddfe2f38",
                name: "Jollof Rice - Nigerian",
                hero: "jollof-main")
        ]
    }
}
