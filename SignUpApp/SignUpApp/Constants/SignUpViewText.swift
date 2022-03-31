//
//  SignUpViewText.swift
//  SignUpApp
//
//  Created by 김상혁 on 2022/03/31.
//

import Foundation

enum SignUpViewText {
    
    static let title = "회원가입"
    
    enum Id {
        static let label = "아이디"
        static let textFieldPlaceholder = "영문 소문자, 숫자, 특수기호(_, -), 5~20자"
        
        enum Warning {
            static let alreadyExist = "이미 사용중인 아이디입니다."
            static let unconformable = "5~20자의 영문 소문자, 숫자와 특수기호(_)(-) 만 사용 가능합니다."
            static let conformable = "사용 가능한 아이디입니다."
        }
    }
    
    enum Password {
        static let label = "비밀번호"
        static let textFieldPlaceholder = "영문 소문자, 숫자, 특수기호(_, -), 5~20자"
        
        enum Warning {
            static let outOfBound = "8자 이상 16자 이하로 입력해주세요."
            static let upperCaseMissing = "영문 대문자를 최소 1자 이상 포함해주세요."
            static let numberMissing = "숫자를 최소 1자 이상 포함해주세요."
            static let specialLetterMissing = "특수문자를 최소 1자 이상 포함해주세요."
            static let safe = "안전한 비밀번호입니다."
        }
    }
    
    enum PasswordConfirm {
        static let label = "비밀번호 재확인"
        
        enum Warning {
            static let incorrect = "비밀번호가 일치하지 않습니다."
            static let correct = "비밀번호가 일치합니다."
        }
    }
    
    enum Name {
        static let label = "이름"
        
        enum Warning {
            static let missing = "이름은 필수 입력 항목입니다."
        }
    }
    
    static let nextButtonTitle = "다음"
}
