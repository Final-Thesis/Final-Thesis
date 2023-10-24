//
//  RequestCard.swift
//  IColab
//
//  Created by Kevin Dallian on 19/10/23.
//

import SwiftUI

struct RequestCard: View {
    var request : Request
    var body: some View {
        HStack(spacing: 10){
            Circle()
                .frame(width: 42)
            VStack(alignment: .leading){
                Text(request.worker.accountDetail.name)
                    .font(.title3).bold()
                Text(request.role.rawValue)
                    .font(.caption)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

#Preview {
    RequestCard(request: MockRequest.array[0])
}
