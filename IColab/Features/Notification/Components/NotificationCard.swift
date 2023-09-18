//
//  NotificationCard.swift
//  IColab
//
//  Created by Kevin Dallian on 18/09/23.
//

import SwiftUI

struct NotificationCard: View {
    var notification : Notification
    var body: some View {
        HStack{
            Image("purple")
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(12)
            VStack(alignment: .leading, spacing: 5){
                Text(notification.desc)
                Text("\(notification.projectName) - \(notification.date.formatted(date: .abbreviated, time: .shortened))")
                    .font(.caption)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

struct NotificationCard_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCard(notification: Mock.accounts[0].notifications![0])
    }
}
