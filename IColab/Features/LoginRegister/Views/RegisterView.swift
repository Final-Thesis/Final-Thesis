//
//  RegisterView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var rvm = RegisterViewModel()
    var body: some View {
        VStack {
            Spacer()
            Group {
                TextFieldView(input: $rvm.username, icon: "person", text: "Username")
                TextFieldView(input: $rvm.email, icon: "envelope.fill", text: "Email")
                TextFieldView(input: $rvm.password, icon: "key", text: "Password", textfieldStyle: .password)
                TextFieldView(input: $rvm.phoneNumber, icon: "iphone.rear.camera", text: "Phone Number")
                TextFieldView(input: $rvm.region, icon: "flag", text: "Region")
            }
            .padding(.vertical)
            Spacer()
            VStack {
                ButtonComponent(title: "Register", width: 320) {
                    print("Register")
                }
                .padding(.bottom, 10)
                Button {
                    print("Login")
                } label: {
                    Text("Already have an Account? Sign In")
                }
                .buttonStyle(.plain)
            }
            Spacer()
            Spacer()
        }
        .padding()
        .navigationTitle("Register")
        .alert(isPresented: $rvm.showError, error: rvm.error) { error in
            //
        } message: { error in
            Text("A")
        }

    }
}

#Preview {
    NavigationStack{
        RegisterView()
            .preferredColorScheme(.dark)
    }
}
