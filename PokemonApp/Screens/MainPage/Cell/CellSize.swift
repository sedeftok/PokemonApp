//
//  CellSize.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import Foundation
import UIKit

struct CellSize { // hücre içi düzen
    
        private enum Constant {
               static let contentInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
               static let collectionViewEstimatedCellHeight: CGFloat = 200
               static let minimumLineSpacing: CGFloat = 16.0
               static let minimumInteritemSpacing: CGFloat = 16.0
               static let zero: CGSize = CGSize(width: UIScreen.main.bounds.width, height: 0)
           }
        
        private let flowLayout: UICollectionViewFlowLayout
            private let width: CGFloat
            private var space: CGFloat {
                return flowLayout.minimumLineSpacing +
                (flowLayout.collectionView?.contentInset.left ?? 0) +
                (flowLayout.collectionView?.contentInset.right ?? 0)
            }
        
        var contentInset: UIEdgeInsets {
                return Constant.contentInset
            }
        
        var estimatedItemSize: CGSize {
            return CGSize(width: floor((width - space) / 2),
                                  height: Constant.collectionViewEstimatedCellHeight)
                              
            }
            
       var zero: CGSize {
               return Constant.zero
            }
    
       init(flowLayout: UICollectionViewFlowLayout, width: CGFloat) {
        self.flowLayout = flowLayout
        self.width = width
           
        setSpacing()
            }
    
    private func setSpacing() {
          flowLayout.minimumLineSpacing = Constant.minimumLineSpacing
          flowLayout.minimumInteritemSpacing = Constant.minimumInteritemSpacing
    }
      
    public func getFlowLayout() -> UICollectionViewFlowLayout {
          return flowLayout
    }
}
