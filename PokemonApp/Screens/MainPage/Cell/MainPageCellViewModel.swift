//
//  MainPageCellViewModel.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import Foundation

class MainPageCellViewModel {
    
    private var result: [Results]
    
    init(result: [Results]) {
        self.result = result
    }
    
    var listCount: Int {
        result.count
    }
    
    func getImage(by indexPath: IndexPath) -> URL {
        let url = URL(string: result[indexPath.row].url ?? "")
        return url ?? Constants.emptyImageURL
    }
    
    func getName(by indexPath: IndexPath) -> String {
        result[indexPath.row].name ?? ""
    }
    
}
