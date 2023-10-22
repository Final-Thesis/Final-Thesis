//
//  OwnerProfileSheet.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct OwnerProfileSheet: View {
    var owner : Account
    @Binding var showSheet : Bool
    @Binding var showProfile : Bool
    var body: some View {
        VStack(spacing: 10) {
            Circle()
                .foregroundColor(Color(.purple))
                .frame(width: 80)
            Text("\(owner.accountDetail.name)")
                .font(.headline)
            Text("\(owner.accountDetail.desc)")
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            HStack{
                ButtonComponent(title: "View Profile", width: 140, tint: Color("graybutton")) {
                    showSheet = false
                    showProfile.toggle()
                }
                ButtonComponent(title: "Contact", width: 140) {
                    print("Contact")
                }
            }
            
        }
    }
}

struct OwnerProfileSheet_Previews: PreviewProvider {
    static var previews: some View {
        OwnerProfileSheet(owner: Mock.accounts[0], showSheet: .constant(false), showProfile: .constant(false))
    }
}
