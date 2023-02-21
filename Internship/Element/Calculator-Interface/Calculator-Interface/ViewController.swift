//
//  ViewController.swift
//  Calculator-Interface
//
//  Created by Aruzhan Boranbay on 15.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    //MARK: - View Labels
    private lazy var biggerViewBlack = UIView()
    private lazy var myLabel: UILabel = {
        var label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 100)
        label.textAlignment = .right
        return label
    }()
    private var myColor: UIColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
    
    private lazy var buttonAC: UIButton = createButton(labelOfButton: "AC", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonSlash: UIButton = createButton(labelOfButton: "+/-", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonPersent: UIButton = createButton(labelOfButton: "%", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonDivided: UIButton = createButton(labelOfButton: "/", backgroundColor: .orange, titleColor: .white)
    private lazy var button7: UIButton = createButton(labelOfButton: "7", backgroundColor: myColor, titleColor: .gray)
    private lazy var button8: UIButton = createButton(labelOfButton: "8", backgroundColor: myColor, titleColor: .gray)
    private lazy var button9: UIButton = createButton(labelOfButton: "9", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonX: UIButton = createButton(labelOfButton: "x", backgroundColor: .orange, titleColor: .white)
    private lazy var button4: UIButton = createButton(labelOfButton: "4", backgroundColor: myColor, titleColor: .gray)
    private lazy var button5: UIButton = createButton(labelOfButton: "5", backgroundColor: myColor, titleColor: .gray)
    private lazy var button6: UIButton = createButton(labelOfButton: "6", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonMinus: UIButton = createButton(labelOfButton: "-", backgroundColor: .orange, titleColor: .white)
    private lazy var button1: UIButton = createButton(labelOfButton: "1", backgroundColor: myColor, titleColor: .gray)
    private lazy var button2: UIButton = createButton(labelOfButton: "2", backgroundColor: myColor, titleColor: .gray)
    private lazy var button3: UIButton = createButton(labelOfButton: "3", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonPlus: UIButton = createButton(labelOfButton: "+", backgroundColor: .orange, titleColor: .white)
    private lazy var button0: UIButton = createButton(labelOfButton: "0", backgroundColor: UIColor(red: 233, green: 232, blue: 232, alpha: 1), titleColor: .gray)
    private lazy var buttonDot: UIButton = createButton(labelOfButton: ".", backgroundColor: UIColor(red: 233, green: 232, blue: 232, alpha: 1), titleColor: .gray)
    private lazy var buttonEqual: UIButton = createButton(labelOfButton: "=", backgroundColor: .orange, titleColor: .white)

    
//MARK: - StackView
    private lazy var stackViewAC: UIStackView = stackViewButton(firstBtn: buttonAC, secondBtn: buttonSlash, thirdBtn: buttonPersent, forthBtn: buttonDivided)
    private lazy var stackView7:UIStackView = stackViewButton(firstBtn: button7, secondBtn: button8, thirdBtn: button9, forthBtn: buttonX)
    private lazy var stackView4:UIStackView = stackViewButton(firstBtn: button4, secondBtn: button5, thirdBtn: button6, forthBtn: buttonMinus)
    private lazy var stackView1:UIStackView = stackViewButton(firstBtn: button1, secondBtn: button2, thirdBtn: button3, forthBtn: buttonPlus)
    
    private lazy var stackViewDot: UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(buttonDot)
        stackView.addArrangedSubview(buttonEqual)
        
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var stackView0: UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(button0)
        stackView.addArrangedSubview(stackViewDot)
        
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var stackViewNumbers: UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(stackViewAC)
        stackView.addArrangedSubview(stackView7)
        stackView.addArrangedSubview(stackView4)
        stackView.addArrangedSubview(stackView1)
        stackView.addArrangedSubview(stackView0)
        
        stackView.spacing = 5
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    private lazy var stackViewMommy:UIStackView = {
        var stackView = UIStackView()
        stackView.addArrangedSubview(biggerViewBlack)
        stackView.addArrangedSubview(stackViewNumbers)
        
        stackView.spacing = 5
        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
//MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        setUpView()
        setUPConstrains()
    }
    
//MARK: - Function menthod for the Buttons
    func createButton(labelOfButton: String, backgroundColor color: UIColor, titleColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(labelOfButton, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
            
        button.backgroundColor = color
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
//        button.layer.cornerRadius = 20
        return button
    }
    
//MARK: - StackView function for BUTTON
    func stackViewButton(firstBtn: UIButton, secondBtn: UIButton, thirdBtn: UIButton, forthBtn: UIButton) -> UIStackView {
        let stackView = UIStackView()
        stackView.addArrangedSubview(firstBtn)
        stackView.addArrangedSubview(secondBtn)
        stackView.addArrangedSubview(thirdBtn)
        stackView.addArrangedSubview(forthBtn)
        
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        return stackView
    }
    
}

//MARK: - SetUpView and SetUPConstrains

private extension ViewController {
    func setUpView() {
        view.addSubview(stackViewMommy)
        biggerViewBlack.addSubview(myLabel)
    }
    
    func setUPConstrains() {
        biggerViewBlack.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.25)
        }
        
        myLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview().inset(15)
        }
        
        stackViewMommy.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
//            make.size.equalTo(view.snp.size)
        }
        
    }
    
}

/*
 
 // make centerX = superview.centerX + 5, centerY = superview.centerY + 5
 make.center.equalTo(superview).offset(5)
 
 // make top = superview.top + 5, left = superview.left + 10, bottom = superview.bottom - 15, right = superview.right - 20
 make.edges.equalTo(superview).inset(UIEdgeInsets(top: 5, left: 10, bottom: 15, right: 20))
 
 //.labeled - allows you to specify constraint labels for debug logs
 make.top.equalTo(otherView).labeled("buttonViewTopConstraint")
 Answer:
 "<SnapKit.LayoutConstraint:buttonViewTopConstraint@SignUpViewController.swift#311
 UIView:0x7fd98491e4c0.leading == UIView:0x7fd983633880.leading>"

 make.size.equalTo(CGSize(width: 50, height: 100))
 
 */
