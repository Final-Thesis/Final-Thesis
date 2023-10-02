//
//  ProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var pvm : ProfileViewModel
    @State var showAddProfile : Bool = false
    var body: some View {
        if let account = pvm.account {
            ScrollView{
                VStack{
                    HStack{
                        ProfileCardView(account: account)
                        Spacer()
                    }
                    PickerView(pickerSelection: $pvm.pickerSelection, allItems: pvm.pickerItems)
                    Text(account.accountDetail.desc)
                        .font(.caption)
                    switch pvm.pickerSelection {
                    case .overview:
                        ProfileDetailCard(backgroundType: .skill, skills: pvm.account?.accountDetail.skills)
                        ProfileDetailCard(backgroundType: .experience, backgrounds: pvm.account?.accountDetail.experiences)
                        ProfileDetailCard(backgroundType: .education, backgrounds: pvm.account?.accountDetail.educations)
                        ButtonComponent(title: "Add More", width: 300) {
                            showAddProfile.toggle()
                        }
                    case .portofolio:
                        PortofolioView()
                            .environmentObject(pvm)
                    default:
                        EmptyView()
                    }
                }
                .padding(.horizontal, 20)
            }
            .navigationTitle("")
            .navigationDestination(isPresented: $showAddProfile) {
                AddProfileView()
                    .environmentObject(pvm)
            }
        }else{
            Text("No Account to be displayed")
        }
            
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(pvm: ProfileViewModel(uid: Mock.accounts[0].id))
            .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
    }
}
