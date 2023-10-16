//
//  InputRoleToggleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 09/10/23.
//

import SwiftUI

struct InputRoleToggleView: View {
    @Binding var rolePick: Role
    var role: Role = .backend
    
    var body: some View {
        Button(action: {
            rolePick = role
        }, label: {
            VStack {
                Image(systemName: "\(Role.getRoleIcon(role: role))")
                    .font(.largeTitle)
                    .padding(.vertical)
                Text(role.rawValue)
                    .font(.title3)
                ZStack {
                        Circle()
                            .stroke(
                                Color.white,
                                lineWidth: 2
                            )
                            .frame(width: 20)
                    if role == rolePick {
                        Circle()
                            .foregroundColor(.purple)
                            .frame(width: 12)
                    }
                }
            }
        })
        .buttonStyle(.plain)
        .frame(minWidth: 120)
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
        .animation(.easeInOut, value: rolePick)
    }
}

#Preview {
    InputRoleToggleView(rolePick: .constant(Role.backend))
        .preferredColorScheme(.dark)
}
