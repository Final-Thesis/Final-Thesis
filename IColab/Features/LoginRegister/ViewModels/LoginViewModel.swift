//
//  LoginViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation
import Firebase
import FirebaseAuth

struct authDataResultModel{
    let uid: String
    let email: String?
//    let password: String?
    let photoUrl: String?
    
    init (user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var error : LoginError?
    @Published var showAlert = false
    @Published var createAccount = false
}

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

class LoginViewModelAuth{
    
    static let shared = LoginViewModelAuth()
    private init() { }
    
    
    func createUser(email: String, password: String) async throws -> authDataResultModel{
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return authDataResultModel(user: authDataResult.user)
    }
}



