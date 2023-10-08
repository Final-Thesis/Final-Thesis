//
//  RegisterViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation

class RegisterViewModel : ObservableObject {
    @Published var username : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var phoneNumber : String = ""
    
    public func register(){
        
    }
}
