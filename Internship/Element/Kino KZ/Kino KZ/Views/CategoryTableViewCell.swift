//
//  MyTableViewCell.swift
//  Kino KZ
//
//  Created by Aruzhan Boranbay on 08.03.2023.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    private lazy var movieCollectionView: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.movieCollectionViewCell)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - CollectionView DataSource
extension CategoryTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.movieCollectionViewCell, for: indexPath) as! MovieCollectionViewCell
//        cell.backgroundColor = .orange
//        cell.layer.cornerRadius = 10
        return cell
    }
    
}

//MARK: - CollectionView Delegate
extension CategoryTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.size.height * 0.5, height: contentView.frame.size.height)
    }
}

//MARK: - setUpViews & setUpConstrains
extension CategoryTableViewCell {
    func setUpViews(){
        contentView.addSubview(movieCollectionView)
    }
    
    func setUpConstrains() {
        movieCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
