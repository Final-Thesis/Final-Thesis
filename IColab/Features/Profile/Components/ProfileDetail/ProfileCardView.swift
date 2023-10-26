//
//  ProfileCardView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileCardView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var account : Account?
    @Binding var showSignIn : Bool
    @State var showAlert = false
    var body: some View {
        if let account = account {
            HStack(spacing: 20){
                if pvm.loggedInAccountIsViewed {
                    NavigationLink {
                        ProfileFormView()
                            .environmentObject(pvm)
                    } label: {
                        ZStack{
                            Image("purple")
                                .resizable()
                                .frame(width: 72, height: 72)
                                .cornerRadius(12)
                            VStack{
                                Spacer()
                                Text("Edit")
                                    .font(.caption2)
                                    .frame(width: 72)
                                    .cornerRadius(12)
                                    .background(.ultraThickMaterial)
                            }
                        }
                    }
                }
                else{
                    ZStack{
                        Image("purple")
                            .resizable()
                            .frame(width: 72, height: 72)
                            .cornerRadius(12)
                    }
                }
                VStack(alignment: .leading, spacing: 10){
                    Text(account.accountDetail.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(Image(systemName: "mappin.and.ellipse")) \(account.accountDetail.location)")
                        .font(.caption)
                }
                Spacer()
                if pvm.loggedInAccountIsViewed {
                    Button {
                        showAlert = true
                    } label: {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
                            .font(.system(size: 14))
                    }
                    .alert("Logout", isPresented: $showAlert) {
                        HStack{
                            Button("Cancel", role: .cancel){
                                
                            }
                            Button("Logout", role: .destructive){
                                AccountManager.shared.logout()
                                showSignIn = true
                            }
                        }
                    } message: {
                        Text("Are you sure you want to logout?")
                    }

                }
                
            }
        } else {
            Text("No Account to be displayed")
        }
        
    }
    
}

struct ProfileCardView_Previews : PreviewProvider{
    static var previews: some View{
        ProfileCardView(account: Mock.accounts[0], showSignIn: .constant(false))
    }
}
