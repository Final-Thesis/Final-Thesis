//
//  ContactCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ContactCardView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48)
                .foregroundColor(.purple)
            VStack(alignment: .leading) {
                Text("Kevin")
                Divider()
            }
            Spacer()
            
        }
    }
}

struct ContactCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCardView()
    }
}
