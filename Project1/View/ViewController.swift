//
//  ViewController.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 10.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private let myTextItem: [String] = ["Text1", "Text2", "Text3", "Text4", "Text5"]
    
    private lazy var myTableView: UITableView = {
        let tableView = UITableView()
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTextItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableViewCell()
        cell.setText(with: "\(indexPath.row + 1)) \(myTextItem[indexPath.row])")
        cell.backgroundColor = .yellow
        return cell
    }
    
    
}

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
