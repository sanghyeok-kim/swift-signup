//
//  Text.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/31.
//

import Foundation

enum Text {
    static let signUpTitleLabel = "회원가입"
    
    static let idLabel = "아이디"
    static let idTextFieldPlaceholder = "영문 소문자, 숫자, 특수기호(_, -), 5~20자"
    static let idWarningLabel = "이미 사용중인 아이디입니다."
    
    static let passwordLabel = "비밀번호"
    static let passwordTextFieldPlaceholder = "영문 소문자, 숫자, 특수기호(_, -), 5~20자"
    static let passwordWarningLabel = "안전한 비밀번호입니다."
    
    static let passwordConfirmLabel = "비밀번호 재확인"
    static let passwordConfirmWarningLabel = "비밀번호가 일치하지 않습니다."
    
    static let nameLabel = "이름"
    static let nameWarningLabel = "이름은 필수 입력 항목입니다."
    
    static let nextButtonTitle = "다음"
}
