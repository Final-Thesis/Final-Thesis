//
//  ProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var pvm : ProfileViewModel
    @State var pickerSelection : PickerItem = .overview
    let pickerItems : [PickerItem] = [.overview, .portofolio]
    var body: some View {
        if let account = pvm.account {
            ScrollView{
                VStack{
                    HStack{
                        ProfileCardView(account: account)
                        Spacer()
                    }
                    PickerView(pickerSelection: $pickerSelection, allItems: pickerItems)
                    Text(account.desc)
                        .font(.caption)
                    switch pickerSelection {
                    case .overview:
                        ProfileDetailCard(profileDetailCardType: .horizontal, accountDetail: pvm.account!.accountDetail, title: "Skills")
                            .padding(.vertical, 15)
                        ProfileDetailCard(profileDetailCardType: .vertical, accountDetail: pvm.account!.accountDetail, title: "Experience")
                            .padding(.vertical, 15)
                        ProfileDetailCard(profileDetailCardType: .vertical, accountDetail: pvm.account!.accountDetail, title: "Education")
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
