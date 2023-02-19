//
//  ViewController.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 10.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private let myTextItem: [[String]] = [["Product","Product","Product","Product","Product"], ["Product","Product"], ["Product","Product","Product"]]
    private let myTitles: [String] = ["Title1", "Title2", "Title3"]
    
    private lazy var myTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .systemBlue
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.dataSource = self
        myTableView.delegate = self
        
        self.view.backgroundColor = .green                     //here can write without SELF
        
        setUpView()
        setUpConstrains()
    }
    
}

//MARK: - TableView DataSource

extension ViewController: UITableViewDataSource {
    
    //For title
    func numberOfSections(in tableView: UITableView) -> Int {
        return myTitles.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myTitles[section]
    }
    
    // For text
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTextItem[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        cell.setText(with: myTextItem[indexPath.section][indexPath.row])
        cell.backgroundColor = .yellow
        return cell
    }
    
    
}

//MARK: - TableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}


//MARK: - Setup views and constrains

private extension ViewController {
    func setUpView() {
        view.addSubview(myTableView)
    }
    
    func setUpConstrains() {
        myTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(10)
        }
    }
    
    
}

//Important about protocol

/*
 
 protocol MyProtocol{
    func mustNeedToImplement()
    func noNeedToImplement()
 }
 extension MyProtocol{
    func noNeedToImplement() {
        print("By Default this one will be shown!!!")
    }
 }
 
 struct ProtocolStruct {
    func mustNeedToImplement() {
        print("Print Hello")
    }
 }
 
 let stuctProtocol = StructProtocol()
 stuctProtocol.mustNeedToImplement() // show: Print Hello
 stuctProtocol.noNeedToImplement // show: By Default this one will be shown!!! (because we add it in extention!)
 
 */
