//
//  ContentView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabBar : TabBarType = .home
    
    var body: some View {
        VStack{
            Spacer()
            VStack{
                switch selectedTabBar {
                case .home:
                    Text("Home")
                case .projects:
                    Text("Projects")
                case .chats:
                    Text("Chats")
                case .notifications:
                    Text("Notifications")
                case .profile:
                    Text("Profile")
                }
            }
            Spacer()
            TabBarView(selectedTabItem: $selectedTabBar)
                .frame(height: 30)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
