//
//  MainPageBuilder.swift
//  PokemonApp
//
//  Created by sedef tok on 30.07.2024.
//

import Foundation
import Alamofire

enum MainPageBuilder {
    
    static func build(appCoordinator: AppCoordinator) -> PokemonViewController {
        
        let viewModel = PokemonViewModel(appCoordinator: appCoordinator)
                
                let viewController = PokemonViewController(viewModel: viewModel)
                
                return viewController
    }
}
