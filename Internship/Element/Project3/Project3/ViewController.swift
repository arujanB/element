//
//  ViewController.swift
//  Project3
//
//  Created by Aruzhan Boranbay on 02.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var array: [String] = ["Array1", "Array2", "Array3"]
    private lazy var colors:[UIColor] = [.systemPink, .brown, .magenta, .purple, .orange]
    
    private lazy var collectionViewVert: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let heigth = view.frame.size.height / 7
        layout.itemSize = CGSize(width: view.frame.size.width * 0.5, height: heigth)
//        layout.itemSize = CGSize(width: 200, height: 200)
        
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(MyFirstCollectionViewCell.self, forCellWithReuseIdentifier: MyFirstCollectionViewCell.IDENTIFIER)
        collectionView.backgroundColor = .cyan
        collectionView.layer.cornerRadius = 5
//        collectionView.sizeThatFits(CGSize(width: view.frame.size.width, height: view.frame.size.height / 2))
        
        collectionView.showsVerticalScrollIndicator = false
        
        return collectionView
    }()
    
    private lazy var collectionViewHor: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: view.frame.size.width * 0.5, height: view.frame.size.height / 7)
        
        var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(MySecondCollectionViewCell.self, forCellWithReuseIdentifier: MySecondCollectionViewCell.IDENTIFIER)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.layer.cornerRadius = 5
        collectionView.backgroundColor = .blue
        
        return collectionView
    }()
    
    private lazy var myLabel:UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.text = "THIS my LABEEEEL. Aaaa... Cool!"
        label.backgroundColor = .green
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        var stackView = UIStackView()
        
        stackView.addArrangedSubview(collectionViewVert)
        stackView.addArrangedSubview(collectionViewHor)
        stackView.addArrangedSubview(myLabel)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        view.backgroundColor = .yellow
        
        collectionViewVert.dataSource = self
        collectionViewVert.delegate = self
        
        collectionViewHor.dataSource = self
        collectionViewHor.delegate = self
        
        setUpViews()
        setUpConstrains()
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewVert {
            return array.count
        }
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if collectionView == collectionViewVert {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyFirstCollectionViewCell.IDENTIFIER, for: indexPath) as! MyFirstCollectionViewCell
            cell.layer.cornerRadius = 5
            cell.layer.masksToBounds = true
//            cell.frame.size =
            
        }else if collectionView == collectionViewHor{
            
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: MySecondCollectionViewCell.IDENTIFIER, for: indexPath) as! MySecondCollectionViewCell
            cell.layer.cornerRadius = 5
            cell.layer.masksToBounds = true
        }
        
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionViewVert {
            let cell = collectionViewVert.cellForItem(at: indexPath) as! MyFirstCollectionViewCell
            cell.setText(with: array[indexPath.row])
        } else {
            let cell = collectionView.cellForItem(at: indexPath) as! MySecondCollectionViewCell
            cell.changeColor(color: colors[indexPath.row])
        }
        
        
    }
}

extension ViewController {
    func setUpViews(){
        view.addSubview(stackView)
    }
    
    func setUpConstrains(){
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(view.safeAreaLayoutGuide.snp.size).inset(20)
        }
        
        collectionViewVert.snp.makeConstraints { make in
            make.width.equalToSuperview()
//            make.height.equalToSuperview().dividedBy(4)
        }
        
        collectionViewHor.snp.makeConstraints { make in
            make.width.equalToSuperview()
        }
        
    }
}
