//
//  ViewController.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 10.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myLabel: UILabel = {
        var label = UILabel()
        label.text = "I am rich"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    private lazy var image: UIImageView = {
        var img = UIImageView()
        img.image = UIImage(named: "diamond")
        return img
    }()
    
    private lazy var myAccountLabel: UILabel = {
        var number = Int.random(in: 100..<100000)
        var account = UILabel()
        account.text = "Account: \(Int.random(in: 100..<100000))$"
        account.textColor = .white
        account.font = UIFont.systemFont(ofSize: 40)
        return account
    }()

    private lazy var button: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Change", for: .normal)                                 //text into button
        button.backgroundColor = .blue                                          //background color of button
        button.setTitleColor(.white, for: .normal)                              //hovering when you indicate to the button
        button.layer.cornerRadius = 10                                          //like circle
        button.addTarget(self, action: #selector(changeAccountNumber), for: .touchUpInside) //giveAction
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)             //size of text, which located into text
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green                     //here can write without SELF
        
        setUpView()
        setUpConstrains()
    }

    @objc func changeAccountNumber() {
        myAccountLabel.text = "Account: \(Int.random(in: 100..<100000))$"
    }
}

//MARK: - Setup views and constrains

// the code where`ve commented, are correct. But they work without var biggerView!!!
private extension ViewController {
    func setUpView() {
        view.addSubview(myLabel)
        view.addSubview(image)
        view.addSubview(myAccountLabel)
        view.addSubview(button)
    }
    
    func setUpConstrains() {
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
//            make.centerY.equalToSuperview().multipliedBy(0.30)
            
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).multipliedBy(3)
//            //make.height.equalToSuperview().multipliedBy(0.44)
            
        }
        
        image.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
//            make.centerY.equalToSuperview().multipliedBy(0.80)

            make.top.equalTo(myLabel.snp.bottom).multipliedBy(1.2)
        }
        
        myAccountLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(image.snp.bottom).multipliedBy(1.2)
        }
        
        button.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(30)
            make.centerX.equalToSuperview()
            
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview().dividedBy(14)
        }
        
    }
}
