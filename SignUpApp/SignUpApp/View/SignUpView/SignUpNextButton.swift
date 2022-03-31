//
//  SignUpNextButton.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/31.
//

import UIKit

class SignUpNextButton: UIButton {
    
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
        setTitle(SignUpViewText.nextButtonTitle, for: .normal)
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 2.5
        setImage(UIImage(systemName: "chevron.right.circle.fill"), for: .normal)
        
        setTitleColor(.gray, for: .normal)
        tintColor = .gray
    }
}
