//
//  MainPageViewController.swift
//  PokemonApp
//
//  Created by sedef tok on 30.07.2024.
//

import UIKit

class PokemonViewController: UIViewController {
        
        private var viewModel: PokemonViewModel?
            
        init(viewModel: PokemonViewModel) {
            self.viewModel = viewModel
            
            super.init(nibName: nil, bundle: nil)
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red

        viewModel?.getPokemonList()
        
        
    }
}
