//
//  MainPageCellViewModel.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import Foundation

class MainPageCellViewModel {
    
    private var result: [Pokemon]
    
    init(result: [Pokemon]) {
        self.result = result
    }
    
    var listCount: Int {
        result.count
    }
}
