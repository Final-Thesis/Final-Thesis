//
//  NotificationView.swift
//  IColab
//
//  Created by Kevin Dallian on 18/09/23.
//

import SwiftUI

struct NotificationView: View {
    var notifications : [Notification]?
    var body: some View {
        VStack{
            if let notifications = notifications{
                ScrollView{
                    ForEach(notifications) { notification in
                        NotificationCard(notification: notification)
                    }
                }
            }else {
                VStack{
                    Image(systemName: "bell.slash.fill")
                        .font(.system(size: 48))
                    Text("No Notifications Yet")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Text("We will notify you when there’s something that needs your attention")
                        .multilineTextAlignment(.center)
                }
                .frame(width: 250)
            }
        }
        .navigationTitle("Notifications")
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(notifications: nil)
        NotificationView(notifications: Mock.accounts[0].notifications)
    }
}
