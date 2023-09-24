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
                    EditFormView(backgroundType: .education)
                        .environmentObject(pvm)
                } label: {
                    ProfileSectionCard(title: "Education", symbol: "graduationcap.fill")
                }.buttonStyle(.plain)
                
                NavigationLink{
                    EditFormView(backgroundType: .education)
                        .environmentObject(pvm)
                } label: {
                    ProfileSectionCard(title: "Experience", symbol: "case.fill")
                }.buttonStyle(.plain)
            }
            ProfileSectionCard(title: "Skill", symbol: "person.fill")
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
