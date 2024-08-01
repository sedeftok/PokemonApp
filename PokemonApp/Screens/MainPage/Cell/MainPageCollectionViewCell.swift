//
//  MainPageCollectionViewCell.swift
//  PokemonApp
//
//  Created by sedef tok on 1.08.2024.
//

import UIKit

class MainPageCollectionViewCell: UICollectionViewCell {
    
    private enum Constant {
           static let viewCornerRadius: CGFloat = 12
           static let shadowOpacity: Float = 0.5
           static let shadowRadius: CGFloat = 8
           static let shadowOffset: CGSize = CGSize(width: 0, height: 4)
           static let minOffSet: CGFloat = 8
       }
       
       private let containerView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .white
           view.layer.cornerRadius = Constant.viewCornerRadius
           view.layer.shadowColor = UIColor.black.cgColor
           view.layer.shadowOffset = Constant.shadowOffset
           view.layer.shadowOpacity = Constant.shadowOpacity
           view.layer.shadowRadius = Constant.shadowRadius
           view.layer.masksToBounds = false
           return view
       }()
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           setupViews()
           setupConstraints()
       }
       
       required init?(coder: NSCoder) {
           super.init(coder: coder)
           setupViews()
           setupConstraints()
       }
       
       private func setupViews() {
           contentView.addSubview(containerView)
       }
       
       private func setupConstraints() {
           NSLayoutConstraint.activate([
               containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constant.minOffSet),
               containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Constant.minOffSet),
               containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Constant.minOffSet),
               containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Constant.minOffSet)
           ])
       }
}
