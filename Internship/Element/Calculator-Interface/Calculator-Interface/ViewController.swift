//
//  ViewController.swift
//  Calculator-Interface
//
//  Created by Aruzhan Boranbay on 15.02.2023.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var biggerViewBlack = UIView()
    
    private lazy var biggerViewNumbers = UIView()
    
    private lazy var myLabel: UILabel = {
        var label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 100)
        return label
    }()
    
    private var myColor: UIColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
    
    private lazy var numbersBiggerViewDelete = UIView()
    private lazy var buttonAC: UIButton = createButton(number: "AC", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonSlash: UIButton = createButton(number: "+/-", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonPersent: UIButton = createButton(number: "%", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonDivided: UIButton = createButton(number: "/", backgroundColor: .orange, titleColor: .white)
    
    
    private lazy var numbersBiggerViewSeven = UIView()
    private lazy var button7: UIButton = createButton(number: "7", backgroundColor: myColor, titleColor: .gray)
    private lazy var button8: UIButton = createButton(number: "8", backgroundColor: myColor, titleColor: .gray)
    private lazy var button9: UIButton = createButton(number: "9", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonX: UIButton = createButton(number: "x", backgroundColor: .orange, titleColor: .white)

    
    private lazy var numbersBiggerViewFour = UIView()
    private lazy var button4: UIButton = createButton(number: "4", backgroundColor: myColor, titleColor: .gray)
    private lazy var button5: UIButton = createButton(number: "5", backgroundColor: myColor, titleColor: .gray)
    private lazy var button6: UIButton = createButton(number: "6", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonMinus: UIButton = createButton(number: "-", backgroundColor: .orange, titleColor: .white)
    

    private lazy var numbersBiggerViewOne = UIView()
    private lazy var button1: UIButton = createButton(number: "1", backgroundColor: myColor, titleColor: .gray)
    private lazy var button2: UIButton = createButton(number: "2", backgroundColor: myColor, titleColor: .gray)
    private lazy var button3: UIButton = createButton(number: "3", backgroundColor: myColor, titleColor: .gray)
    private lazy var buttonPlus: UIButton = createButton(number: "+", backgroundColor: .orange, titleColor: .white)

    
    
    private lazy var numbersBiggerView0 = UIView()
    private lazy var numbersBiggerViewDot = UIView()
    private lazy var button0: UIButton = createButton(number: "0", backgroundColor: UIColor(red: 233, green: 232, blue: 232, alpha: 1), titleColor: .gray)
    
    private lazy var buttonDot: UIButton = createButton(number: ".", backgroundColor: UIColor(red: 233, green: 232, blue: 232, alpha: 1), titleColor: .gray)
    
    private lazy var buttonEqual: UIButton = createButton(number: "=", backgroundColor: .orange, titleColor: .white)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        setUpView()
        setUPConstrains()
    }
    
}

//MARK: - SetUpView and SetUPConstrains

private extension ViewController {
    func setUpView() {
        view.addSubview(biggerViewBlack)
        view.addSubview(biggerViewNumbers)
        
        biggerViewBlack.addSubview(myLabel)
    
        
        
        biggerViewNumbers.addSubview(numbersBiggerViewDelete)
        
        numbersBiggerViewDelete.addSubview(buttonAC)
        numbersBiggerViewDelete.addSubview(buttonSlash)
        numbersBiggerViewDelete.addSubview(buttonPersent)
        numbersBiggerViewDelete.addSubview(buttonDivided)
        
        
        biggerViewNumbers.addSubview(numbersBiggerViewSeven)
        
        numbersBiggerViewSeven.addSubview(button7)
        numbersBiggerViewSeven.addSubview(button8)
        numbersBiggerViewSeven.addSubview(button9)
        numbersBiggerViewSeven.addSubview(buttonX)
        
        
        biggerViewNumbers.addSubview(numbersBiggerViewFour)
        
        numbersBiggerViewFour.addSubview(button4)
        numbersBiggerViewFour.addSubview(button5)
        numbersBiggerViewFour.addSubview(button6)
        numbersBiggerViewFour.addSubview(buttonMinus)
        
        
        biggerViewNumbers.addSubview(numbersBiggerViewOne)
        
        numbersBiggerViewOne.addSubview(button1)
        numbersBiggerViewOne.addSubview(button2)
        numbersBiggerViewOne.addSubview(button3)
        numbersBiggerViewOne.addSubview(buttonPlus)
        
        
        biggerViewNumbers.addSubview(numbersBiggerView0)
        
        numbersBiggerView0.addSubview(button0)
        numbersBiggerView0.addSubview(numbersBiggerViewDot)
        
        numbersBiggerViewDot.addSubview(buttonDot)
        numbersBiggerViewDot.addSubview(buttonEqual)
    }
    
    
    
    func setUPConstrains() {
        biggerViewBlack.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
            
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).multipliedBy(0.25)
        }
        
        biggerViewNumbers.snp.makeConstraints { make in
            make.top.equalTo(biggerViewBlack.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
        }
        
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().multipliedBy(1.8)
            make.centerY.equalToSuperview().multipliedBy(1.3)
        }
        
        
        
        numbersBiggerViewDelete.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
        }
        setUpButton(firstBtn: buttonAC, secondBtn: buttonSlash, thirdBtn: buttonPersent, forthBtn: buttonDivided)
        
        
        numbersBiggerViewSeven.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewDelete.snp.bottom)
        }
        setUpButton(firstBtn: button7, secondBtn: button8, thirdBtn: button9, forthBtn: buttonX)
        
        
        numbersBiggerViewFour.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewSeven.snp.bottom)
        }
        setUpButton(firstBtn: button4, secondBtn: button5, thirdBtn: button6, forthBtn: buttonMinus)
        
        
        numbersBiggerViewOne.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewFour.snp.bottom)
        }
        setUpButton(firstBtn: button1, secondBtn: button2, thirdBtn: button3, forthBtn: buttonPlus)
        
        
        
        numbersBiggerView0.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewOne.snp.bottom)
        }
        
        button0.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalToSuperview()
        }
        numbersBiggerViewDot.snp.makeConstraints { make in
            make.leading.equalTo(button0.snp.trailing)
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalToSuperview()
        }
        buttonDot.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalToSuperview()
        }
        buttonEqual.snp.makeConstraints { make in
            make.leading.equalTo(buttonDot.snp.trailing)
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalToSuperview()
        }
    }
    
}

//MARK: - Function menthod of the Buttons
extension ViewController {
    func createButton(number: String, backgroundColor color: UIColor, titleColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(number, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
            
        button.backgroundColor = color
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
//        button.layer.cornerRadius = 20
        return button
    }
}

//MARK: - SetUpButton Constrains
extension ViewController {
    func setUpButton(firstBtn: UIButton, secondBtn: UIButton, thirdBtn: UIButton, forthBtn: UIButton) {
        firstBtn.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        secondBtn.snp.makeConstraints { make in
            make.leading.equalTo(firstBtn.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        thirdBtn.snp.makeConstraints { make in
            make.leading.equalTo(secondBtn.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        forthBtn.snp.makeConstraints { make in
            make.leading.equalTo(thirdBtn.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
    }
    
}
