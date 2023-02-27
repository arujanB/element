//
//  MyCollectionViewCell.swift
//  Project2
//
//  Created by Aruzhan Boranbay on 27.02.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let IDENTIFIER = "MyCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemTeal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
