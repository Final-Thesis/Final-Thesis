//
//  RoleCard.swift
//  IColab
//
//  Created by Kevin Dallian on 19/10/23.
//

import SwiftUI

struct RoleCard: View {
    var symbol: String
    var roleTitle : String
    var quantity : Int
    var max : Int
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: symbol)
                .font(.largeTitle)
            VStack{
                Text(roleTitle)
                    .bold()
                Text("\(quantity)/\(max)")
                    .font(.caption)
                    .bold()
            }
        }
        .frame(width: 80, height: 100)
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

#Preview {
    RoleCard(symbol: "computermouse.fill", roleTitle: "Front-End", quantity: 3, max: 4)
}
