//
//  Pokemon.swift
//  PokemonApp
//
//  Created by sedef tok on 31.07.2024.
//

// This file was generated from JSON Schema using codebeautify, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome9 = try Welcome9(json)

import Foundation

// MARK: - Pokemon
struct Pokemon: Codable {
    let count: Int?
    let next: String?
    let results: [Results]?
}

// MARK: - Result
struct Results: Codable {
    let name: String?
    let url: String?
}
