//
//  ProfileSectionCard.swift
//  IColab
//
//  Created by Kevin Dallian on 24/09/23.
//

import SwiftUI

struct ProfileSectionCard: View {
    var title : String
    var symbol : String
    var body: some View {
        VStack{
            Image(systemName: symbol)
                .font(.system(size: 52))
                .padding(.bottom, 10)
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
        }
        .frame(width: 150, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.primary, lineWidth: 3)
        )
    }
}

struct ProfileSectionCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSectionCard(title: "Education", symbol: "graduationcap.fill")
    }
}
