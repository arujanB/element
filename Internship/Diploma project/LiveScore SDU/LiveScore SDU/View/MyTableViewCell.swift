//
//  MyTableViewCell.swift
//  LiveScore SDU
//
//  Created by Aruzhan Boranbay on 28.02.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    static let IDENTIFIER = "MyTableViewCell"
    
    private lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.textColor = .lightGray
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setNameLabel(with name:String) {
        nameLabel.text = name
    }
    
}

extension MyTableViewCell{
    func setUpViews() {
        contentView.addSubview(nameLabel)
    }
    
    func setUpConstraints(){
        nameLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
