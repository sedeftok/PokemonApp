//
//  MainPageDelegate.swift
//  PokemonApp
//
//  Created by sedef tok on 30.07.2024.
//

import Foundation
import UIKit

final class MainPageDelegate: NSObject {
    
    private var viewModel: MainPageCellViewModel?
    
    func update(cellViewModel: MainPageCellViewModel) {
        self.viewModel = cellViewModel
    }
}

extension MainPageDelegate: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout {
            let size = CellSize(flowLayout: flowLayout,
                                width: UIScreen.main.bounds.size.width)
            return size.estimatedItemSize
        }
        return .zero
    }
}
