//
//  NotificationView.swift
//  IColab
//
//  Created by Kevin Dallian on 18/09/23.
//

import SwiftUI

struct NotificationView: View {
    var nvm = NotificationViewModel()
    var body: some View {
        VStack{
            if let notifications = nvm.notifications{
                ScrollView{
                    ForEach(notifications) { notification in
                        NotificationCard(notification: notification)
                            .padding(.horizontal, 20)
                    }
                }
            }else {
                VStack{
                    Spacer()
                    Image(systemName: "bell.slash.fill")
                        .font(.system(size: 48))
                    Text("No Notifications Yet")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Text("We will notify you when there’s something that needs your attention")
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                    Spacer()
                }
            }
        }.navigationTitle("Notifications")
        Spacer()
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NotificationView()
        }
    }
}
