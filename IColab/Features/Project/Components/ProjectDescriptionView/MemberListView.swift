//
//  MemberListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct MemberListView: View {
    var role: Role = .design
    var count: Int = 5
    var editMode: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: Role.getRoleIcon(role: role))
                Text(role.rawValue)
                    .padding(.trailing)
                Spacer()
                
                if editMode {
                    Image(systemName: "chevron.right")
                }
                else {
                    Text("\(count)")
                }
            }
            Divider()
                .background(.white)
        }
    }
}

struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        MemberListView()
    }
}
