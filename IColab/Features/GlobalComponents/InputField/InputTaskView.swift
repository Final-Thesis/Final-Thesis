//
//  InputTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTaskView: View {
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
                TaskCardView()
                TaskCardView()
                TaskCardView()
            }
            .padding(4)
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
        }
    }
}

struct InputTaskView_Previews: PreviewProvider {
    static var previews: some View {
        InputTaskView()
            .preferredColorScheme(.dark)
    }
}
