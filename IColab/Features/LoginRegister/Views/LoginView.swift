//
//  LoginView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var lvm : LoginViewModel = LoginViewModel()
    @Binding var showSignIn : Bool
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Group {
                    TextFieldView(input: $lvm.username, icon: "person", text: "Username")
                    TextFieldView(input: $lvm.password, icon: "key", text: "Password", textfieldStyle: .password)
                }
                .padding(.vertical)
                Spacer()
                
                VStack {
                    Button {
                        lvm.login()
                        showSignIn.toggle()
                    } label: {
                        Text("Sign In")
                            .frame(width: 330)
                            .padding(.vertical, 10)
                            .border(.primary)
                    }
                    .buttonStyle(.plain)
                    Text("Forgot Password?")
                    ButtonComponent(title: "Create Account", width: 320) {
                        lvm.createAccount.toggle()
                    }
                }
                Spacer()
                Spacer()
            }
            .navigationTitle("Login")
            .padding()
            .alert(isPresented: $lvm.showAlert, error: lvm.error) { error in
                Button("Dismiss"){
                    print("Dismiss")
                }
            } message: { error in
                Text("\(error.errorSuggestion)")
            }
            .onAppear {
                print("\(Mock.accounts[0].accountDetail.name)")
                print("\(Mock.accounts[0].password)")
            }
            .navigationDestination(isPresented: $lvm.createAccount) {
                RegisterView(showSignIn: $showSignIn)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.large)
    }
        
}


