//
//  TaskCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct TaskCardView: View {
    @State var toggle: Bool = true
    
    var body: some View {
        HStack {
            VStack {
                Text("Task Name")
                    .font(.headline)
                Text("Member Name")
                    .font(.caption2)
            }
            Spacer()
            Button {
                toggle.toggle()
            } label: {
                ZStack {
                    Circle()
                        .stroke(
                            Color.white,
                            lineWidth: 2
                        )
                        .frame(width: 20)
                    if toggle {
                        Circle()
                            .foregroundColor(.purple)
                            .frame(width: 12)
                    }
                    
                }
            }

            
        }
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

struct TaskCardView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCardView()
            .preferredColorScheme(.dark)
    }
}
