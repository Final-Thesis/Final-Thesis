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
                ButtonComponent(title: "View Profile", width: 140, tint: .gray) {
                    print("View Profile")
                }
                ButtonComponent(title: "Contact", width: 140, tint: Color("purple")) {
                    print("Contact")
                }
            }
            
        }
    }
}

struct OwnerProfileSheet_Previews: PreviewProvider {
    static var previews: some View {
        OwnerProfileSheet(owner: Mock.accounts[0])
    }
}
