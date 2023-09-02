//
//  TabBarView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTabItem : TabBarType
    private let tabBarItems: [TabBarType] = [.home, .projects, .chats, .notifications, .profile]
    var body: some View {
        GeometryReader{ geometry in
            HStack(spacing: 0){
                ForEach(tabBarItems, id: \.self){ tabBarType in
                    TabBarItemComponent(tabBarType: tabBarType) {
                        selectedTabItem = tabBarType
                    }
                    .frame(width: geometry.size.width * 0.2)
                    .foregroundColor(tabBarType == selectedTabItem ? .blue : .primary)
                }
            }.padding(.top, 10)
        }.background(.ultraThinMaterial)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            TabBarView(selectedTabItem: .constant(.home))
        }
        
    }
}
