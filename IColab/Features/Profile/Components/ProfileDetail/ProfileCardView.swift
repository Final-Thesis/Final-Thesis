//
//  ProfileCardView.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import SwiftUI

struct ProfileCardView: View {
    var account : Account?
    
    var body: some View {
        if let account = account {
            HStack(spacing: 20){
                Image("purple")
                    .resizable()
                    .frame(width: 72, height: 72)
                    .cornerRadius(12)
                VStack(alignment: .leading, spacing: 10){
                    Text(account.accountDetail.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(Image(systemName: "mappin.and.ellipse")) \(account.accountDetail.location)")
                        .font(.caption)
                }
            }
        } else {
            Text("No Account to be displayed")
        }
    }
}

struct ProfileCardView_Previews : PreviewProvider{
    static var previews: some View{
        ProfileCardView(account: Mock.accounts[0])
    }
}
