//
//  MovieViewController.swift
//  Kino KZ
//
//  Created by Aruzhan Boranbay on 03.03.2023.
//

import UIKit
import SnapKit

class MovieViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    private var contentView = UIView()
    
    private lazy var myLabel: UILabel = {
        var label = UILabel()
        label.text = "HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow HEllow"
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
        setUpConstrains()
        
        view.backgroundColor = .orange
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MovieViewController {
    func setUpViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(myLabel)
    }
    
    func setUpConstrains(){
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        contentView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalTo(view)
        }

        myLabel.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
