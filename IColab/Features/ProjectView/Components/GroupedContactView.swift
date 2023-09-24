//
//  GroupedContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct GroupedContactView: View {
    @State var toggle: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Text("Important Contacts")
                    .font(.headline)
                Spacer()
                Button {
                    toggle.toggle()
                } label: {
                    Image(systemName: toggle ? "chevron.down" : "chevron.up")
                }
                
            }
            Divider()
                .background(.white)
            if toggle {
                ContactCardView()
                ContactCardView()
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
