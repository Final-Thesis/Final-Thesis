//
//  LoginViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation

enum LoginError : LocalizedError{
    case invalidPassword
    case incompleteForm
    
    var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Invalid Username or Password"
        case .incompleteForm:
            return "Username or Password is empty"
        }
    }
    
    var errorSuggestion : String {
        switch self {
        case .invalidPassword:
            return "Try filling the right username or password."
        case .incompleteForm:
            return "Cannot login when username or password is empty."
        }
    }
}

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var error : LoginError?
    @Published var showAlert = false

    public func login(){
        let getUsername = username
        let getPassword = password
        
        if getUsername.isEmpty || getPassword.isEmpty {
            error = .incompleteForm
            showAlert = true
            return
        }
        
        if let foundAccount = Mock.accounts.first(where: { account in
            account.accountDetail.name == getUsername && account.password == getPassword
        }) {
            print(foundAccount.email)
        }else{
            error = .invalidPassword
            showAlert = true
        }
        
    }
}
