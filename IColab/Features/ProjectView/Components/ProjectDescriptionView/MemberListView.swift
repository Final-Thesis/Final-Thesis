//
//  MemberListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct MemberListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "paintbrush.pointed")
                Text("Designer")
                    .padding(.trailing)
                Text("3")
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
