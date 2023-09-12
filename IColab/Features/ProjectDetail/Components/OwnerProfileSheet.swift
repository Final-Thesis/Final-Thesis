//
//  OwnerProfileSheet.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct OwnerProfileSheet: View {
    var owner : Account
    var body: some View {
        VStack(spacing: 10) {
            Circle()
                .foregroundColor(Color("purple"))
                .frame(width: 80)
            Text("\(owner.name)")
                .font(.headline)
            Text("\(owner.desc)")
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            HStack{
                NavigationLink(value: owner) {
                    Text("View Profile")
                        .font(.callout)
                        .fontWeight(.bold)
                        .frame(width: 140)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 12))
                .tint(Color("purple"))
                ButtonComponent(title: "Contact", width: 140, tint: Color("purple")) {
                    print("Contact")
                }
            }
            
        }.navigationDestination(for: Account.self) { account in
            ProfileView(pvm: ProfileViewModel(uid: account.id))
        }
    }
}

struct OwnerProfileSheet_Previews: PreviewProvider {
    static var previews: some View {
        OwnerProfileSheet(owner: Mock.accounts[0])
    }
}
