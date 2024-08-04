//
//  Constants.swift
//  PokemonApp
//
//  Created by sedef tok on 29.07.2024.
//

import Foundation

struct Constants {
    
    static let BASE_URL = "https://pokeapi.co/api/v2"
    static let QUERY_URL = "/pokemon"
    
    static let emptyImageURL: URL = URL(string: "https://www.swift-inc.com/public/images/images-empty.png")!
}

extension Constants {
    
    static func generatePokemonURL() -> URL? {
            URL(string: BASE_URL + QUERY_URL)
        }
    
}
