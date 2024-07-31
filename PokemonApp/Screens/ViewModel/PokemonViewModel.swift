//
//  MainPageViewModel.swift
//  PokemonApp
//
//  Created by sedef tok on 30.07.2024.
//

import Foundation

enum PokemonListViewModelState {
    case showPokemonList([Results])
    case showError(String)
}

protocol PokemonViewModelOutput: AnyObject {
    func updateView(_ state: PokemonListViewModelState)
}

protocol PokemonViewModelProtocol {
    var output: PokemonViewModelOutput? { get set }
    
    func getPokemonList()
}

final class PokemonViewModel {
    
    weak var output: PokemonViewModelOutput?
    private var appCoordinator: AppCoordinator?
    private var httpClient: HttpClientProtocol?
    
    init(httpClient: HttpClientProtocol, appCoordinator: AppCoordinator) {
            self.httpClient = httpClient
            self.appCoordinator = appCoordinator
        }
    
    func getPokemonList() {
        httpClient?.fetch(url: Constants.generatePokemonURL()!, completion: {(result: Result<Pokemon, Error>) in
            
            switch result {
            case .success(let response):
                guard let results = response.results else { return print ("error")
                }
                print (results)
    
            case .failure(let error):
                  return print(error.localizedDescription)
                        }
        })
    }
}
