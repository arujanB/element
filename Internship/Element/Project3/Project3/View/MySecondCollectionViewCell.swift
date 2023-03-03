//
//  MySecondCollectionViewCell.swift
//  Project3
//
//  Created by Aruzhan Boranbay on 03.03.2023.
//

import UIKit

class MySecondCollectionViewCell: UICollectionViewCell {
    static let IDENTIFIER = "MySecondCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemPink
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeColor(color: UIColor) {
        contentView.backgroundColor = color
    }
    
}

extension MySecondCollectionViewCell {
    func setUpViews() {
        
    }
    
    func setUpConstrains() {
        
    }
}
