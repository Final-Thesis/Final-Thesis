//
//  ContentView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabBar : TabBarType = .home
    @StateObject var accountManager = AccountManager()

    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    switch selectedTabBar {
                    case .home:
                        HomeView()
                    case .projects:
                        ProjectMainView()
                    case .chats:
                        ChatListView()
                    case .notifications:
                        NotificationView()
                    case .profile:
                        let pvm = ProfileViewModel(uid: Mock.accounts[0].id)
                        ProfileView(pvm: pvm)
                            .environmentObject(pvm)
                    }
                }
            }
            TabBarView(selectedTabItem: $selectedTabBar)
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
