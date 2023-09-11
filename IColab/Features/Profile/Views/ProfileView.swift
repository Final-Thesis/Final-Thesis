//
//  ProfileView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    
    var body: some View {
        if let account = profileViewModel.account {
            VStack{
                HStack{
                    ProfileCardView(account: account)
                    Spacer()
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
