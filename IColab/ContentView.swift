//
//  ContentView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabBar : TabBarType = .home
    @State var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView{
                VStack{
                    switch selectedTabBar {
                    case .home:
                        HomeView(path: $path)
                    case .projects:
                        Text("Projects")
                    case .chats:
                        Text("Chats")
                    case .notifications:
                        Text("Notifications")
                    case .profile:
                        ProfileView(pvm: ProfileViewModel(uid: Mock.accounts[0].id))
                    }
                }
                Spacer()
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
