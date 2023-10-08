//
//  ContentView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabBar : TabBarType = .home
    @StateObject var navigationManager = NavigationManager()
    
    init() {
        Mock.init()
    }
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            ScrollView{
                VStack{
                    switch selectedTabBar {
                    case .home:
                        HomeView(path: $navigationManager.path)
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
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
