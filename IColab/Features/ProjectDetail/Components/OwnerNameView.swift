//
//  OwnerNameView.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct OwnerNameView: View {
    var name : String
    @Binding var showSheet : Bool
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            HStack{
                Circle()
                    .frame(width: 32)
                Text("\(name)")
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(.ultraThinMaterial)
        })
        .buttonStyle(.plain)
    }
}

struct OwnerNameView_Previews: PreviewProvider {
    static var previews: some View {
        OwnerNameView(name: "Project Owner Name", showSheet: .constant(false))
    }
}
