//
//  MovieViewController.swift
//  Kino KZ
//
//  Created by Aruzhan Boranbay on 03.03.2023.
//

import UIKit
import SnapKit

class MovieViewController: UIViewController {
    
    private let categoryConstants = Categories.allCases
    
    private var scrollView = UIScrollView()
    private var contentView = UIView()
    
    private lazy var searchBar: UISearchBar = {
        var search = UISearchBar()
        search.placeholder = "Search moview, series, tv shows"
        search.searchBarStyle = .minimal                        //SOS: delete background color
        return search
    }()
    
    private lazy var myCollectionVie: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.categoryCollectionViewCell)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
        setUpConstrains()
        
        myCollectionVie.dataSource = self
        myCollectionVie.delegate = self
    }

}

//MARK: - CollectionView DataSource
extension MovieViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryConstants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.categoryCollectionViewCell, for: indexPath) as! CategoryCollectionViewCell
        cell.configure(with: categoryConstants[indexPath.row].rawValue)
        cell.backgroundColor = .systemGray6
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        return cell
    }
    
}

//MARK: - CollectionView Delegate CellLayoutSize       SOS
extension MovieViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = categoryConstants[indexPath.row].rawValue
        label.sizeToFit()
        
        return CGSize(width: label.frame.size.width + 20, height: collectionView.frame.size.height - 10)
    }
}

//MARK: - setUpViewS & setUpConstrains
extension MovieViewController {
    func setUpViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(searchBar)
        contentView.addSubview(myCollectionVie)
    }
    
    func setUpConstrains(){
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        contentView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalTo(view).inset(10)
        }
        
        searchBar.snp.makeConstraints { make in
            make.leading.top.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.05)
            
        }
        
        myCollectionVie.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.05)
        }

    }
}
