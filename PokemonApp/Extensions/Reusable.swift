//
//  Reusable.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import Foundation

protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String { return String(describing: Self.self) }
}
