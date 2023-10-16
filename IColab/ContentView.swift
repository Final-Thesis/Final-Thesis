//
//  ContentView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabBar : TabBarType = .home
    @StateObject var accountManager = AccountManager.shared
    @State var showSignIn : Bool = false
    init() {
        Mock.init()
    }
    var body: some View {
        ZStack{
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
                            let pvm = ProfileViewModel(uid: accountManager.account?.id ?? "")
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
        .accentColor(.primary)
        .onAppear {
            self.showSignIn = true
        }
        .fullScreenCover(isPresented: $showSignIn) {
            NavigationStack{
                OnboardingView(showSignIn: $showSignIn)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
