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
        view.addSubview(greenView)
        view.addSubview(yellowView)
        
    }
    
    func setUpConstrains() {
        redView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.trailing.equalToSuperview()
            
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(3)
        }
        
        greenView.snp.makeConstraints { make in
            make.top.equalTo(redView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(3) //multiplied(0.33)
        }
        
        yellowView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.bottom)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
    }
}
