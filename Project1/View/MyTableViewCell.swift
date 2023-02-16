//
//  MyTableViewCell.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 16.02.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    private lazy var myText: UILabel = {
        let myLabel = UILabel()
        myLabel.text = "My Text"
        myLabel.font = UIFont.systemFont(ofSize: 20)
        return myLabel
    }()

    private lazy var myImg: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
        setUpConstrains()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(with string: String) {
        myText.text = string
    }
}

//MARK: - Set UP Views
private extension MyTableViewCell {
    
    func setUpViews() {
        contentView.addSubview(myText)
        contentView.addSubview(myImg)
    }
    
    func setUpConstrains() {
        myText.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().offset(15)
            make.width.equalToSuperview().multipliedBy(0.7)
        }
        
        myImg.snp.makeConstraints { make in
            make.leading.equalTo(myText.snp.trailing)
            
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
    }
    
    
    
}
