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
        
        let httpClient = HttpClient(alamofireSession: Alamofire.Session.default)
        
        let viewModel = PokemonViewModel(httpClient: httpClient, appCoordinator: appCoordinator)
                
                let viewController = PokemonViewController(viewModel: viewModel)
                
                return viewController
    }
}
