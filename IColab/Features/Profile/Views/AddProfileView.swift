//
//  AddProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 24/09/23.
//

import SwiftUI

struct AddProfileView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var body: some View {
        VStack(spacing: 30){
            HStack(spacing: 20){
                NavigationLink {
                    NewFormView(backgroundType: .education)
                        .environmentObject(pvm)
                } label: {
                    ProfileSectionCard(title: "Education", symbol: "graduationcap.fill")
                }.buttonStyle(.plain)
                
                NavigationLink{
                    NewFormView(backgroundType: .education)
                        .environmentObject(pvm)
                } label: {
                    ProfileSectionCard(title: "Experience", symbol: "case.fill")
                }.buttonStyle(.plain)
            }
            NavigationLink {
                NewFormView(backgroundType: .skill)
                    .environmentObject(pvm)
            } label: {
                ProfileSectionCard(title: "Skill", symbol: "person.fill")
            }

            
        }
    }
}

struct AddProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddProfileView()
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
        }
        
    }
}
