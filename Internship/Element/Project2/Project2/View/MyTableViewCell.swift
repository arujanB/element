//
//  MyTableViewCell.swift
//  Project2
//
//  Created by Aruzhan Boranbay on 23.02.2023.
//

import UIKit
import SnapKit

class MyTableViewCell: UITableViewCell {
    static let IDENTIFIER = "MyTableViewCell"
    
    //MARK: - CollectionView
    private lazy var itemCollectionView: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 200)
        
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.IDENTIFIER)
        collectionView.backgroundColor = .systemPink
        collectionView.showsHorizontalScrollIndicator = false //shows your dectination(scrolling line)
        return collectionView
    }()

    //MARK: - Override
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        itemCollectionView.dataSource = self
        itemCollectionView.delegate = self
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - CollectionView DataSource
extension MyTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.IDENTIFIER, for: indexPath) as! MyCollectionViewCell
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
//        cell.setText(with: "\(Int.random(in: 0..<10))")
        return cell
    }
    
}

//MARK: - CollectionView Delegat
extension MyTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! MyCollectionViewCell
        cell.setText(with: "\(Int.random(in: 0..<10))")
    }
}

//MARK: - SetUpViews & setUpConstrains
extension MyTableViewCell {
    func setUpViews(){
        contentView.addSubview(itemCollectionView)
    }
    
    func setUpConstrains(){
        itemCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
