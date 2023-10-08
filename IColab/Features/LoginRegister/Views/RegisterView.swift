//
//  RegisterView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Register")
                    .font(.largeTitle)
                Spacer()
            }
            
            Spacer()
            Group {
//                TextFieldView()
//                TextFieldView()
//                TextFieldView()
//                TextFieldView()
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
        .padding()
    }
}

#Preview {
    RegisterView()
        .preferredColorScheme(.dark)
}
