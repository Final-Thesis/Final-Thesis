//
//  GroupedContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct GroupedContactView: View {
    var title: String = "Group Title"
    var members: [Account] = Mock.accounts
    
    @State var toggle: Bool = true
    
    var body: some View {
        VStack {
            Button {
                toggle.toggle()
            } label: {
                HStack {
                    Text(title)
                        .font(.headline)
                    Spacer()
                    Image(systemName: toggle ? "chevron.down" : "chevron.up")
                }
            }
            .buttonStyle(.plain)

            
            Divider()
                .background(.white)
            if toggle {
                ForEach(members) { member in
                    ContactCardView()
                }
            }
            
        }
        .animation(.easeInOut, value: toggle)
    }
}

struct GroupedContactView_Previews: PreviewProvider {
    static var previews: some View {
        GroupedContactView()
    }
}
