//
//  ProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @State var pickerSelection : PickerItem = .overview
    let pickerItems : [PickerItem] = [.overview, .portofolio]
    var body: some View {
        if let account = profileViewModel.account {
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
                    ProfileDetailCard(profileDetailCardType: .horizontal, title: "Skills")
                    ProfileDetailCard(profileDetailCardType: .vertical, title: "Experience")
                case .portofolio:
                    Text("Portofolio")
                default:
                    EmptyView()
                }
            }.padding(.horizontal, 20)
        }else{
            Text("No Account to be displayed")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
