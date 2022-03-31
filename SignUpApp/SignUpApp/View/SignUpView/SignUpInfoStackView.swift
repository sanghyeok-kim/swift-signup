//
//  SignUpInfoStackView.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/31.
//

import UIKit

class SignUpInfoStackView: UIStackView {
    
    private let idStackView = UIStackView.makeInputStackView()
    private let idLabel = UILabel.makeInputTitleLabel(text: Text.idLabel)
    private let idTextField = UITextField.makeInputTextField(placeHolder: Text.idTextFieldPlaceholder)
    private let idWarningLabel = UILabel.makeInputWarningLabel(text: Text.idWarningLabel)
    
    private let passwordStackView = UIStackView.makeInputStackView()
    private let passwordLabel = UILabel.makeInputTitleLabel(text: Text.passwordLabel)
    private let passwordTextField = UITextField.makeInputTextField(placeHolder: Text.passwordTextFieldPlaceholder)
    private let passwordWarningLabel = UILabel.makeInputWarningLabel(text: Text.passwordWarningLabel)
    
    private let passwordConfirmStackView = UIStackView.makeInputStackView()
    private let passwordConfirmLabel = UILabel.makeInputTitleLabel(text: Text.passwordConfirmLabel)
    private let passwordConfirmTextField = UITextField.makeInputTextField(placeHolder: nil)
    private let passwordConfirmWarningLabel = UILabel.makeInputWarningLabel(text: Text.passwordConfirmWarningLabel)
    
    private let nameStackView = UIStackView.makeInputStackView()
    private let nameLabel = UILabel.makeInputTitleLabel(text: Text.nameLabel)
    private let nameTextField = UITextField.makeInputTextField(placeHolder: nil)
    private let nameWarningLabel = UILabel.makeInputWarningLabel(text: Text.nameWarningLabel)
    
    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureStackView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        configureStackView()
    }
    
    //MARK: Configure View
    
    func configureStackView() {
        alignment = .leading
        axis = .vertical
        distribution = .equalSpacing
        spacing = 20
        
        configureComponents()
    }
    
    func configureComponents() {
        configureSignUpStackViewComponents()
        configureSingleInputStackViews()
    }
    
    func configureSignUpStackViewComponents() {
        addArrangedSubview(idStackView)
        addArrangedSubview(passwordStackView)
        addArrangedSubview(passwordConfirmStackView)
        addArrangedSubview(nameStackView)
        
        layoutSignUpStackViewComponents()
    }
    
    func layoutSignUpStackViewComponents() {
        idStackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        passwordStackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        passwordConfirmStackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        nameStackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    func configureSingleInputStackViews() {
        idStackView.addArrangedSubview(idLabel)
        idStackView.addArrangedSubview(idTextField)
        idStackView.addArrangedSubview(idWarningLabel)
        
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextField)
        passwordStackView.addArrangedSubview(passwordWarningLabel)
        
        passwordConfirmStackView.addArrangedSubview(passwordConfirmLabel)
        passwordConfirmStackView.addArrangedSubview(passwordConfirmTextField)
        passwordConfirmStackView.addArrangedSubview(passwordConfirmWarningLabel)
        
        nameStackView.addArrangedSubview(nameLabel)
        nameStackView.addArrangedSubview(nameTextField)
        nameStackView.addArrangedSubview(nameWarningLabel)
        
        layoutSingleInputStackViews()
    }
    
    func layoutSingleInputStackViews() {
        idStackView.setCustomSpacing(5, after: idLabel)
        idTextField.widthAnchor.constraint(equalTo: idStackView.widthAnchor).isActive = true
        idTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordStackView.setCustomSpacing(5, after: passwordLabel)
        passwordTextField.widthAnchor.constraint(equalTo: passwordStackView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordConfirmStackView.setCustomSpacing(5, after: passwordConfirmLabel)
        passwordConfirmTextField.widthAnchor.constraint(equalTo: passwordConfirmStackView.widthAnchor).isActive = true
        passwordConfirmTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        nameStackView.setCustomSpacing(5, after: nameLabel)
        nameTextField.widthAnchor.constraint(equalTo: nameStackView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}

private extension UIStackView {
    static func makeInputStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.alignment = .leading
        stackView.axis = .vertical
        return stackView
    }
}

private extension UILabel {
    static func makeInputTitleLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = "\(text)"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }
    
    static func makeInputWarningLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = "\(text)"
        label.font = UIFont.systemFont(ofSize: 12)
        label.adjustsFontSizeToFitWidth = true
        return label
    }
}

private extension UITextField {
    static func makeInputTextField(placeHolder: String?) -> UITextField {
        let textField = UITextField()
        textField.layer.borderColor = UIColor.darkGray.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 2.5
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 10))
        let placeHolder = placeHolder ?? ""
        textField.placeholder = "\(placeHolder)"
        return textField
    }
}
