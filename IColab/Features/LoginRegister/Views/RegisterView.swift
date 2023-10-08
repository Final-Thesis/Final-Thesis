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
                TextFieldView(input: $rvm.username, icon: "key", text: "Password", textfieldStyle: .password)
                TextFieldView(input: $rvm.username, icon: "iphone.rear.camera", text: "Phone Number")
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
    }
}

#Preview {
    NavigationStack{
        RegisterView()
            .preferredColorScheme(.dark)
    }
}
