//
//  LoginView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var lvm : LoginViewModel
    var body: some View {
        VStack {
            Spacer()
            Group {
                TextFieldView(input: $lvm.username, text: "Username")
                TextFieldView(input: $lvm.password, icon: "key", text: "Password", textfieldStyle: .password)
            }
            .padding(.vertical)
            Spacer()
            
            VStack {
                ButtonComponent(title: "Sign In", width: 320) {
                    print("Sign In")
                }
                Text("Forgot Password?")
                ButtonComponent(title: "Create Account", width: 320) {
                    print("Sign In")
                }
            }
            Spacer()
            Spacer()
        }
        .navigationTitle("Login")
        .padding()
    }
}

#Preview {
    NavigationStack{
        LoginView(lvm: LoginViewModel())
            .preferredColorScheme(.dark)
    }
    
}

