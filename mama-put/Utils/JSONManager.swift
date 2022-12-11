//
//  JSONManager.swift
//  mama-put
//
//  Created by Segun Konibire on 11/12/2022.
//

import Foundation

class JSONManager {
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Could not find file named: \(filename)")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Could not load the file named: \(filename)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Could not decode the file named: \(filename)")
        }
    }
}
