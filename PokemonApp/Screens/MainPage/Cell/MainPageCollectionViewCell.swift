//
//  MainPageCollectionViewCell.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import UIKit
import Kingfisher

class MainPageCollectionViewCell: UICollectionViewCell {
    
    private enum Constant {
        static let viewCornerRadius: CGFloat = 12
        static let viewCornerLineWidth: CGFloat = 1
        static let shadowOpacity: Float = 0.5
        static let shadowRadius: CGFloat = 8
        static let shadowOffset: CGSize = CGSize(width: 0, height: 4)
        static let minOffSet: CGFloat = 8
    }
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.layer.masksToBounds = true
        image.backgroundColor = .white
        image.layer.cornerRadius = 8
        return image
    }()
    
    private lazy var pokemonName: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textAlignment = .center
        label.backgroundColor = .white
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    func configure(imageURL: URL, name: String) {
        configureCell()
        configureImage(url: imageURL)
        configureName(name: name)
    }
    
    private func configureCell() {
        configureUI()
        configureConstaints()
    }
    
    private func configureUI() {
        contentView.addSubview(image)
        contentView.addSubview(pokemonName)
        
        self.layer.cornerRadius = Constant.viewCornerRadius
        self.layer.borderWidth = Constant.viewCornerLineWidth
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 8
    }
    private func configureConstaints() {
        pokemonImage()
        pokemonName1()
    }
    
    private func pokemonImage() {
        image.snp.makeConstraints { make in
            
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            
            make.height.equalTo(contentView.snp.width).multipliedBy(0.75)
        }
    }
    
    private func pokemonName1() {
        pokemonName.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(8)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    private func configureImage(url: URL) {
        image.kf.setImage(with: url)
    }
    
    private func configureName(name: String) {
        pokemonName.text = name
    }
}


