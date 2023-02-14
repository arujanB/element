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
    
    //biggerView is empty, because of that we do not create, like say, constraint
    private lazy var biggerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemBlue                     //here can write without SELF
        
        setUpView()
        setUpConstrains()
    }

}

//MARK: - Setup views and constrains

// the code where`ve commented, are correct. But they work without var biggerView!!!
private extension ViewController {
    func setUpView() {
//        view.addSubview(redView)
//        view.addSubview(greenView)
//        view.addSubview(yellowView)
        
        view.addSubview(biggerView)
        biggerView.addSubview(redView)
        biggerView.addSubview(greenView)
        view.addSubview(yellowView)
        
    }
    
    func setUpConstrains() {
        biggerView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            
            make.height.equalToSuperview().dividedBy(2)
        }
        
        redView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            make.leading.equalToSuperview()
//
//            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(2)
//            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
            
            make.top.bottom.leading.equalToSuperview()
            
            make.width.equalToSuperview().dividedBy(2)
        }
        
        greenView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            make.leading.equalTo(redView.snp.trailing)
//            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
//
//            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2)
            
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(redView.snp.trailing)
            make.trailing.equalToSuperview()
            
        }
        
        yellowView.snp.makeConstraints { make in
//            make.top.equalTo(greenView.snp.bottom)
//            make.leading.trailing.equalToSuperview()
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
            make.top.equalTo(biggerView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
        
    }
}
