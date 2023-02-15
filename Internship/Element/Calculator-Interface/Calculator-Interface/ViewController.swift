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
    
    
    private lazy var numbersBiggerViewDelete = UIView()
    private lazy var buttonAC: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonSlash: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonPersent: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("%", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonDivided: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = .orange
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    
    
    
    private lazy var numbersBiggerViewSeven = UIView()
    private lazy var button7: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("7", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button8: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("8", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button9: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("9", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonX: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("X", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = .orange
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    

    
    private lazy var numbersBiggerViewFour = UIView()
    private lazy var button4: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("4", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button5: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("5", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button6: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("6", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonMinus: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = .orange
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()

    

    private lazy var numbersBiggerViewOne = UIView()
    private lazy var button1: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("1", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button2: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("2", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var button3: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("3", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonPlus: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = .orange
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()

    
    
    private lazy var numbersBiggerView0 = UIView()
    private lazy var numbersBiggerViewDot = UIView()
    private lazy var button0: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("0", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonDot: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle(".", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        
        button.backgroundColor = UIColor(red: 233, green: 232, blue: 232, alpha: 1)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    private lazy var buttonEqual: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = .orange
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        biggerViewNumbers.backgroundColor = .red
        
        setUpView()
        setUPConstrains()
    }

}

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
        
        buttonAC.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonSlash.snp.makeConstraints { make in
            make.leading.equalTo(buttonAC.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonPersent.snp.makeConstraints { make in
            make.leading.equalTo(buttonSlash.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonDivided.snp.makeConstraints { make in
            make.leading.equalTo(buttonPersent.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        
        
        
        numbersBiggerViewSeven.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewDelete.snp.bottom)
        }
        
        button7.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button8.snp.makeConstraints { make in
            make.leading.equalTo(button7.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button9.snp.makeConstraints { make in
            make.leading.equalTo(button8.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonX.snp.makeConstraints { make in
            make.leading.equalTo(button9.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        
        
        numbersBiggerViewFour.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewSeven.snp.bottom)
        }
        
        button4.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button5.snp.makeConstraints { make in
            make.leading.equalTo(button4.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button6.snp.makeConstraints { make in
            make.leading.equalTo(button5.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonMinus.snp.makeConstraints { make in
            make.leading.equalTo(button6.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        
        
        numbersBiggerViewOne.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalToSuperview()
            
            make.top.equalTo(numbersBiggerViewFour.snp.bottom)
        }
        
        button1.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button2.snp.makeConstraints { make in
            make.leading.equalTo(button1.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        button3.snp.makeConstraints { make in
            make.leading.equalTo(button2.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        buttonPlus.snp.makeConstraints { make in
            make.leading.equalTo(button3.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalToSuperview()
        }
        
        
        
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
