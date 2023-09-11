//
//  TabBarItemComponent.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct TabBarItemComponent: View {
    var tabBarType : TabBarType
    var action : () -> Void
    
    init(tabBarType : TabBarType, action: @escaping () -> Void){
        self.tabBarType = tabBarType
        self.action = action
    }
    
    var body: some View {
        Button {
            self.action()
        } label: {
            VStack{
                Image(systemName: "\(tabBarType.getImage())")
                Text("\(tabBarType.getCaption())")
                    .font(.caption2)
            }
        }
    }
}

struct TabBarItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemComponent(tabBarType: .chats){
            print("Go to chats")
        }
    }
}
