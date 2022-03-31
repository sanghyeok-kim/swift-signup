//
//  SignUpView.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/30.
//

import UIKit

class SignUpView: UIView {
    
    private let signUpTitleLabel = SignUpTitleLabel()
    private let signUpInfoStackView = SignUpInfoStackView()
    private let signUpNextButton = SignUpNextButton()
    
    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    //MARK: Configure View
    
    func configureView() {
        configureSignUpTitleLabel()
        configureSignUpInfoStackView()
        configureNextButton()
    }
    
    //MARK: Configure Components
    
    //Configure SignUpTitle
    func configureSignUpTitleLabel() {
        addSubview(signUpTitleLabel)
        layoutSignUpTitleLabel()
    }
    
    func layoutSignUpTitleLabel() {
        signUpTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        signUpTitleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
    //Configure SignUpStackView
    func configureSignUpInfoStackView() {
        addSubview(signUpInfoStackView)
        layoutSignUpInfoStackView()
    }
    
    func layoutSignUpInfoStackView() {
        signUpInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        signUpInfoStackView.topAnchor.constraint(equalTo: signUpTitleLabel.bottomAnchor, constant: 15).isActive = true
        signUpInfoStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpInfoStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }
    
    //Configure NextButton
    func configureNextButton() {
        addSubview(signUpNextButton)
        layoutNextButton()
    }
    
    func layoutNextButton() {
        signUpNextButton.translatesAutoresizingMaskIntoConstraints = false
        signUpNextButton.topAnchor.constraint(equalTo: signUpInfoStackView.bottomAnchor, constant: 20).isActive = true
        signUpNextButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signUpNextButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        signUpNextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
