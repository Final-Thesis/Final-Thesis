//
//  InputMemberView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputMemberView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Input Members")
                    .font(.headline)
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "plus.circle.fill")
                }
                .buttonStyle(.plain)
            }
            Group {
                //need to add the cancel/trash/delete button
                MemberListView()
                MemberListView()
                MemberListView()
            }
            .padding()
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
        }
    }
}

struct InputMemberView_Previews: PreviewProvider {
    static var previews: some View {
        InputMemberView()
            .preferredColorScheme(.dark)
    }
}
