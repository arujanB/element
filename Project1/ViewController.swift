//
//  ViewController.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 10.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var redView: UIView = {
        var view = UIView()
        view.backgroundColor = .systemRed
        return view
    }()
    
    private lazy var greenView: UIView = {
        var view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    private lazy var yellowView: UIView = {
        var view = UIView()
        view.backgroundColor = .systemYellow
        return view
    }()
    
    
    
    private lazy var myLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.text = "I am rich"
        label.textColor = .white
        return label
    }()
    
    private lazy var myDiamond: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
        return imageView
    }()
    
    var randomNumber: UILabel = {
        var random = UILabel()
        random.text = "\(Int.random(in: 100..<1000))$"
        random.font = UIFont.boldSystemFont(ofSize: 30)
        random.textColor = .purple
        return random
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemBlue                     //here can write without SELF
        
        setUpView()
        setUpConstrains()
    }

}

//MARK: - Setup views and constrains

private extension ViewController {
    func setUpView() {
        view.addSubview(redView)
        redView.addSubview(greenView)
        redView.addSubview(yellowView)
        
        view.addSubview(myLabel)
        view.addSubview(myDiamond)
        myDiamond.addSubview(randomNumber)
        
    }
    
    func setUpConstrains() {
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top).offset(-100)
        }
        
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(200)
        }
        
        randomNumber.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().dividedBy(2)
        }
        
        
        
        
        
        redView.snp.makeConstraints { make in
            //this one we just create in CENTER
            make.center.equalToSuperview()
            
            //here we give SIZES (WIDTH, HEIGHT)      there all shown severel variants to give WIDTH and HEIGHT
            make.width.equalToSuperview().multipliedBy(0.95)
//            make.height.equalToSuperview().multipliedBy(0.95)
//            make.width.equalTo(view.snp.width).multipliedBy(0.95)
            make.height.equalTo(view.snp.height).multipliedBy(0.95)
//            make.size.equalTo(view.snp.height).multipliedBy(0.95)
            
//            edges // edges - it is : leading, trailing, top, bottom
        }
        
        greenView.snp.makeConstraints { make in
//            make.center.equalToSuperview()
            
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
//            make.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
//            make.height.equalToSuperview().multipliedBy(0.5)
        }
        yellowView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(greenView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
            
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        
        
        
    }
}


/*
 make.top.equalTo(greenView.snp.bottom)
 make.leading.equalToSuperview()
 make.trailing.equalToSuperview()
 make.bottom.equalToSuperview()
 make.width.equalToSuperview().multipliedBy(0.5)
 
 */
