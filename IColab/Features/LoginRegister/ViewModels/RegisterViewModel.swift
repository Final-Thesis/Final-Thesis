//
//  RegisterViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation

enum RegisterError : LocalizedError{
    case formIncomplete
    case shortUsername
    case notEmailFormat
    case passwordLessThan8
    case phoneNotNumber
    
    var errorDescription: String? {
        switch self {
        case .formIncomplete:
            return "Form not Filled"
        case .shortUsername:
            return "Short Username"
        case .notEmailFormat:
            return "Email Format Required"
        case .passwordLessThan8:
            return "Short Password"
        case .phoneNotNumber:
            return "Phone Number contains letters"
        }
    }
    
    var errorSuggestion: String? {
        switch self {
        case .formIncomplete:
            return "Make sure all form is filled."
        case .shortUsername:
            return "Username must be more than 8 characters."
        case .notEmailFormat:
            return "Email must have @ character."
        case .passwordLessThan8:
            return "Password must contain more than 8 characters."
        case .phoneNotNumber:
            return "Make sure phone number is filled with numbers only."
        }
    }
}

class RegisterViewModel : ObservableObject {
    @Published var username : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var phoneNumber : String = ""
    @Published var region : String = ""
    
    @Published var error : RegisterError?
    @Published var showError = false
    
    public func register(){
        if username.isEmpty || email.isEmpty || password.isEmpty || phoneNumber.isEmpty || region.isEmpty {
            showError(error: .formIncomplete)
        }
        
        if username.count < 8 {
            showError(error: .shortUsername)
        }
        
        if password.count < 8 {
            showError(error: .passwordLessThan8)
        }
        
    }
    
    private func showError(error: RegisterError) {
        self.error = error
        showError.toggle()
    }
}
