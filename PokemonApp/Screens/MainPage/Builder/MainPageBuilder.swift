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
        
        let viewModel = MainPageViewModel(httpClient: httpClient, appCoordinator: appCoordinator)
        
        let delegate = MainPageDelegate()
        let dataSource = MainPageDataSource()
                
        let viewController = PokemonViewController(viewModel: viewModel, delegate: delegate,
                                                   dataSource: dataSource)
                
        return viewController
    }
}
