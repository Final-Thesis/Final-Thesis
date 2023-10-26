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
                    TextFieldView(input: $lvm.email, icon: "person", text: "Username")
                    TextFieldView(input: $lvm.password, icon: "key", text: "Password", textfieldStyle: .password)
                }
                .padding(.vertical)
                Spacer()
                
                VStack {
                    Button {
                        lvm.login()
                        if !lvm.showAlert {
                            showSignIn.toggle()
                        }
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
                guard let account = Mock.accounts.first(where: {$0.projectsOwned!.contains(where: {$0.projectState == .overdue})}) else {
                    return
                }
                print("Account dengan Overdue Project : \(account.accountDetail.name)")
            }
            .navigationDestination(isPresented: $lvm.createAccount) {
                RegisterView(showSignIn: $showSignIn)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.large)
    }
        
}


