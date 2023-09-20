//
//  ProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var pvm : ProfileViewModel
    var body: some View {
        if let account = pvm.account {
            ScrollView{
                VStack{
                    HStack{
                        ProfileCardView(account: account)
                        Spacer()
                    }
                    PickerView(pickerSelection: $pvm.pickerSelection, allItems: pvm.pickerItems)
                    Text(account.desc)
                        .font(.caption)
                    switch pvm.pickerSelection {
                    case .overview:
                        ProfileDetailCard(profileDetailCardType: .horizontal, accountDetail: pvm.account!.accountDetail, title: "Skills")
                            .environmentObject(pvm)
                        ProfileDetailCard(profileDetailCardType: .vertical, accountDetail: pvm.account!.accountDetail, title: "Experience")
                            .environmentObject(pvm)
                        ProfileDetailCard(profileDetailCardType: .vertical, accountDetail: pvm.account!.accountDetail, title: "Education")
                            .environmentObject(pvm)
                    case .portofolio:
                        Text("Portofolio")
                    default:
                        EmptyView()
                    }
                }
                .padding(.horizontal, 20)
            }
            .navigationTitle("")
            
        }else{
            Text("No Account to be displayed")
        }
            
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(pvm: ProfileViewModel(uid: Mock.accounts[0].id))
    }
}
