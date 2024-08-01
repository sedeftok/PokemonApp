//
//  MainPageDataSource.swift
//  PokemonApp
//
//  Created by sedef tok on 31.07.2024.
//

import Foundation
import UIKit

final class MainPageDataSource: NSObject {
    
   // private var viewModel: MainPageCellViewModel?
    
   // func update(cellViewModel: MainPageCellViewModel) {
       //     self.viewModel = cellViewModel
      //  }
}

extension MainPageDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainPageCollectionViewCell.reuseIdentifier, for: indexPath) as? MainPageCollectionViewCell
                 else { return UICollectionViewCell() }
                
        cell.backgroundColor = .white
        return cell
        }
    }


