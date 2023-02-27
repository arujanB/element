//
//  SetionHeaderView.swift
//  Project2
//
//  Created by Aruzhan Boranbay on 27.02.2023.
//

import UIKit
import SnapKit

final class SetionHeaderView: UIView {
    
    private lazy var mainLabelSection: UILabel = {
        var label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor = .label
        label.backgroundColor = .brown
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(with sectionLabel:  String) {
        mainLabelSection.text = sectionLabel
    }
    
}

private extension SetionHeaderView {
    func setUpViews(){
        addSubview(mainLabelSection)
    }
    
    func setUpConstrains(){
        mainLabelSection.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
