//
//  MainPageDataSource.swift
//  PokemonApp
//
//  Created by sedef tok on 31.07.2024.
//

import Foundation
import UIKit

final class MainPageDataSource: NSObject {
    
    private var viewModel: MainPageCellViewModel?
    
    func update(cellViewModel: MainPageCellViewModel) {
        self.viewModel = cellViewModel
    }
}

extension MainPageDataSource: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.listCount ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainPageCollectionViewCell.reuseIdentifier, for: indexPath) as? MainPageCollectionViewCell, let viewModel = viewModel else { return UICollectionViewCell() }
        
        cell.configure(imageURL: viewModel.getImage(by: indexPath), name: viewModel.getName(by: indexPath))
        
        cell.backgroundColor = .white
        return cell
    }
}


