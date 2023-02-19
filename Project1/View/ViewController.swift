//
//  ViewController.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 10.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private let mySections: [String] = ["Drinks", "Cakes", "FastFoods"]
    private let labels:[[String]] = [["CocaCola", "Fanta", "Sprite"], ["CupCake", "Birthday Cake"], ["Humburger", "Pizza", "Sandwich", "Chips", "Pizza", "Sandwich"]]
    private let price: [[Int]] = [[123,45,54],[434,6],[43,765,97,100, 345, 68]]
    private let images: [[String]] = [["cocacola", "fanta", "sprite"], ["cupcake", "birthdaycake"], ["burger", "bread", "sandwich", "chips", "bread", "sandwich"]]
    
    private let myLabel: UILabel = {
        let name = UILabel()
        name.text = "Magnum"
        name.font = UIFont.boldSystemFont(ofSize: 50)
//        name.textAlignment = .center
        return name
    }()
    
    private let productTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .systemPink
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white

        productTableView.dataSource = self
        productTableView.delegate = self
        
        setUpViews()
        setUpConstrains()
    }
    
}

//MARK: - TableView DataSource

extension ViewController: UITableViewDataSource{
    // section
    func numberOfSections(in tableView: UITableView) -> Int {
        return mySections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mySections[section]
    }
    
    // cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        cell.setTitle(title: labels[indexPath.section][indexPath.row])
        cell.setPrice(number: price[indexPath.section][indexPath.row])
        cell.setImg(img: images[indexPath.section][indexPath.row])
        return cell
    }
    
    
}

//MARK: - TableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}


//MARK: - Setup views and constrains

private extension ViewController {
    func setUpViews() {
        view.addSubview(myLabel)
        view.addSubview(productTableView)
    }
    
    func setUpConstrains() {
        myLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        productTableView.snp.makeConstraints { make in
            make.top.equalTo(myLabel.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
    }
    
}
