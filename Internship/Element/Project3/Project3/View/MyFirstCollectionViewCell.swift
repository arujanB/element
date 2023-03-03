//
//  MyFirstCollectionViewCell.swift
//  Project3
//
//  Created by Aruzhan Boranbay on 02.03.2023.
//

import UIKit

class MyFirstCollectionViewCell: UICollectionViewCell {
    static let IDENTIFIER = "MyFirstCollectionViewCell"

    private lazy var myLabel:UILabel = {
        var label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.textColor = .white
//        label.text = "\(Int.random(in: 0..<10))"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemTeal
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(with text:String) {
        myLabel.text = text
    }
    
}

//MARK: - Set Up Views & Set Up Constrains
private extension MyFirstCollectionViewCell {
    
    func setUpViews() {
        contentView.addSubview(myLabel)
    }
    
    func setUpConstrains() {
        myLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
