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
    
    private let myLabel: UILabel = {
        let name = UILabel()
        name.text = "Magnum"
        name.font = UIFont.boldSystemFont(ofSize: 50)
        name.textColor = .label
//        name.textAlignment = .center
        return name
    }()
    
    private let productTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .systemPink
        
//        tableView.separatorStyle = .none // it give delete the lines where in tableView
//        tableView.allowsSelection = false // when you select a row it won`t be bilnk
//        tableView.showsVerticalScrollIndicator = false // it deleted the line where you can see where are you in the code
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground

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
//        return labels[section].count
        var result = 0
        for i in DatabaseModel.array {
            if i.section == mySections[section] {
                result += 1
            }
        }
        
        return result
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        var result = 0
        for i in DatabaseModel.array {
            if i.section == mySections[indexPath.section] {
                cell.setStruct(with: DatabaseModel.array[result + indexPath.row])
            }
        }
        
//        if mySections[indexPath.section] == "Drinks" {
//            cell.setStruct(with: DatabaseModel.array[indexPath.row])
//        }else if(mySections[indexPath.section] == "Cakes"){
//            cell.setStruct(with: DatabaseModel.array[indexPath.row])
//        }else {
//            cell.setStruct(with: DatabaseModel.array[indexPath.row])
//        }
        
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
