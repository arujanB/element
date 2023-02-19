//
//  MyTableViewCell.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 16.02.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let IDENTIFIER = "MyTableViewCell"

    private lazy var myTitle: UILabel = {
        var title = UILabel()
        title.text = "Default Title"
        title.font = UIFont.systemFont(ofSize: 30)
        return title
    }()
    
    private lazy var myPrice: UILabel = {
        var price = UILabel()
        var number = 1000
        price.text = "\(number)$ Default Price"
        price.font = UIFont.italicSystemFont(ofSize: 15)
        return price
    }()

    private lazy var myImg: UIImageView = {
        var img = UIImageView()
        img.image = UIImage(named: "bread")
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(title: String){
        myTitle.text = title
    }

    func setPrice(number: Int) {
        myPrice.text = "\(number)$"
    }
    
    func setImg(img: String) {
        myImg.image = UIImage(named: img)
    }
}

extension MyTableViewCell {
    
    func setUpViews(){
        contentView.addSubview(myTitle)
        contentView.addSubview(myPrice)
        contentView.addSubview(myImg)
    }
    
    func setUpConstrains() {
        myTitle.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.67)
            make.height.equalToSuperview().dividedBy(2)
            make.top.equalToSuperview().inset(10)
            make.leading.equalToSuperview().offset(30)
        }

        myPrice.snp.makeConstraints { make in
            make.top.equalTo(myTitle.snp.bottom)
            make.leading.equalToSuperview().inset(30)
        }
        
        myImg.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(myTitle.snp.trailing)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        
    }
    
    
}
