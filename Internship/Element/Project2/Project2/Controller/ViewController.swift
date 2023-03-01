//
//  ViewController.swift
//  Project2
//
//  Created by Aruzhan Boranbay on 23.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var sectionsTitle:[String] = ["Older than 21", "Equal or Less than 21"]
    
    private var myTableView: UITableView = {
        let tableView = UITableView()
//        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        setUpViews()
        setUpConstrains()
    }


}

extension ViewController: UITableViewDataSource {
    
    //section
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsTitle.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionsTitle[section]
    }
    
    //Section (Title) Change 2 ways:
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = SetionHeaderView()
//        view.setText(with: sectionsTitle[section])
//        return view
//    }
    
    //second version this one:
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let view = view as? UITableViewHeaderFooterView else { fatalError() }
        view.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.textLabel?.textColor = .label
    }
    
    //cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        return cell
    }
    
}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}

extension ViewController {
    func setUpViews() {
        view.addSubview(myTableView)
    }
    
    func setUpConstrains(){
        myTableView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
}

