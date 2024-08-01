//
//  MainPageViewController.swift
//  PokemonApp
//
//  Created by sedef tok on 30.07.2024.
//

import UIKit
import SnapKit

class PokemonViewController: UIViewController {
        
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView( frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(MainPageCollectionViewCell.self,
                                        forCellWithReuseIdentifier: MainPageCollectionViewCell.reuseIdentifier)
        collectionView.showsVerticalScrollIndicator = false
        
        return collectionView
    }()
     
        private var viewModel: MainPageViewModel?
        private var delegate: MainPageDelegate?
        private var dataSource: MainPageDataSource?
            
        init(viewModel: MainPageViewModel, delegate: MainPageDelegate,
             dataSource: MainPageDataSource) {
            self.viewModel = viewModel
            self.delegate = delegate
            self.dataSource = dataSource
            
            super.init(nibName: nil, bundle: nil)
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
      override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(named: "#8e0e1d")
        collectionView.backgroundColor = .white

        viewModel?.getPokemonList()
          
        configureUI()
        }
    
      private func configureUI() {
 
          configureDelegate()
          configureContraints()
      }
    
     private func configureDelegate() {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let sizeCalculator = CellSize(flowLayout: flowLayout, width: UIScreen.main.bounds.size.width)
                        collectionView.contentInset = sizeCalculator.contentInset
                        collectionView.collectionViewLayout = sizeCalculator.getFlowLayout()
        }
       }
    
      private func configureContraints() {
        
        view.addSubview(collectionView) // ekrana ekleme
        
        pokemonCollectionView()
      }
    
      private func pokemonCollectionView() {
            collectionView.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
                make.left.right.equalTo(view.safeAreaLayoutGuide)
                make.bottom.equalToSuperview()
            }
     }
}
