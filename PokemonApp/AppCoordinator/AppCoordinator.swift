//
//  AppCoordinator.swift
//  PokemonApp
//
//  Created by sedef tok on 29.07.2024.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    func start()
}

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainPageBuilder.build(appCoordinator: self)
               navigationController?.pushViewController(vc, animated: false)
    }
}
