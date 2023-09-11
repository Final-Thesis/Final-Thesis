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
            Text(account.name)
        } else {
            Text("No Account to be displayed")
        }
    }
}

struct ProfileCardView_Previews : PreviewProvider{
    static var previews: some View{
        let account: Account? = Mock.accounts[0]
        return ProfileCardView(account: account)
    }
}
