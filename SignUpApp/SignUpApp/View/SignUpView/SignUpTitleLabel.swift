//
//  SignUpTitleLabel.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/31.
//

import UIKit

class SignUpTitleLabel: UILabel {
    
    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureLabel()
    }
    
    //MARK: Configure View
    
    func configureLabel() {
        text = SignUpViewText.title
        font = UIFont.boldSystemFont(ofSize: 25)
        textColor = .systemGreen
    }
}
