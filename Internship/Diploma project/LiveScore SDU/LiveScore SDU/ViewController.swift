//
//  SceneDelegate.swift
//  LiveScore SDU
//
//  Created by Aruzhan Boranbay on 28.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    private let row: [String] = ["Drinks", "Cakes", "FastFoods"]
    
    //MARK: - Date
    private lazy var buttonLive: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LIVE", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
            
        return button
    }()
    
    private lazy var dateStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(buttonLive)
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)
        stackView.addArrangedSubview(button5)
        stackView.addArrangedSubview(buttonCal)
        
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
//        stackView.backgroundColor = .systemPink
        
        return stackView
    }()
    
    private lazy var button1: UIButton = createButton(week: "THU", date: "12", titleColor: .white)
    private lazy var button2: UIButton = createButton(week: "FRI", date: "12", titleColor: .white)
    private lazy var button3: UIButton = createButton(week: "TODAY", date: "12", titleColor: .orange)
    private lazy var button4: UIButton = createButton(week: "SUN", date: "12", titleColor: .white)
    private lazy var button5: UIButton = createButton(week: "MON", date: "12", titleColor: .white)
    private lazy var buttonCal: UIButton = createButton(week: "THU", date: "12", titleColor: .white)
    
    //MARK: - Name likeSection CHANGE IT
    private lazy var mainNameView: UIView = {
       var view = UIView()
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 5
        view.layer.borderColor = CGColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    private var img: UIImageView {
        let img = UIImageView()
        img.image = UIImage.init(named: "sdu")
        return img
    }
    
    private lazy var labelTitle: UILabel = {
       var label = UILabel()
        label.text = "Sdu Football League"
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.textColor = .white
        return label
    }()
    
    private lazy var labelSubtitle:UILabel = {
        var label = UILabel()
        label.text = "Almaty"
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.textColor = .white
        return label
    }()
    //
    
    //MARK: - TableView
    private let myTableView: UITableView = {
        var tableView = UITableView()
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.IDENTIFIER)
        tableView.backgroundColor = .clear
        tableView.allowsSelection = false
        return tableView
    }()
    
    //MARK: - BiggerView
    private lazy var biggerView: UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(dateStackView)
        stackView.addArrangedSubview(mainNameView)
        stackView.addArrangedSubview(myTableView)
        
        stackView.spacing = 5
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        
        return stackView
    }()
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 0.118, green: 0.118, blue: 0.118, alpha: 1)
        
        setUpView()
        setUPConstrains()
        
        myTableView.dataSource = self
    }
    
    //MARK: - Function menthod for the Buttons
    func createButton(week: String, date:String, titleColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle("\(week)\n\(date)", for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        
        return button
    }
    
}

//MARK: - tableView DataSource
extension ViewController: UITableViewDataSource{
    //cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return row.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.IDENTIFIER, for: indexPath) as! MyTableViewCell
        cell.setNameLabel(with: row[indexPath.row])
        cell.backgroundColor = .clear
        return cell
    }
    
}

//MARK: - setUpView and setUPConstrains
private extension ViewController {
    func setUpView() {
        view.addSubview(biggerView)
        biggerView.addSubview(dateStackView)
        
        
        
        //change it
//        biggerView.addSubview(mainNameView)
//        mainNameView.addSubview(img)
//        mainNameView.addSubview(labelTitle)
//        mainNameView.addSubview(labelSubtitle)
        //
    }
    
    func setUPConstrains() {
        biggerView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges).inset(13)
        }
        
        dateStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.height.equalToSuperview().multipliedBy(0.05)
        }
        
        
        //change it
//        img.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//        }
//        labelTitle.snp.makeConstraints { make in
//            make.leading.equalTo(img.snp.trailing)
//        }
//        labelSubtitle.snp.makeConstraints { make in
//            make.top.equalTo(labelTitle.snp.bottom)
//        }
        //
    }
    
}
