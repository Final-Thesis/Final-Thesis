//
//  PortofolioView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/10/23.
//

import SwiftUI

struct PortofolioView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var body: some View {
        GridView(rows: (pvm.account?.projectsOwned?.count ?? 0) / 2 + 1, columns: 2) { row, column in
            let objectIndex = row * 2 + column
            if objectIndex < pvm.account!.projectsOwned!.count {
                PortofolioCard(project: pvm.account!.projectsOwned![objectIndex])
            } else {
                EmptyView()
            }
        }
    }
}

#Preview {
    PortofolioView()
        .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
}
