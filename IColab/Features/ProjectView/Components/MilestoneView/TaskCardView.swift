//
//  TaskCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct TaskCardView: View {
    var task: Task = MockTasks.tasks[0]
    @Binding var toggle: Bool
    
    var editMode: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.headline)
                Text(task.member)
                    .font(.caption2)
            }
            Spacer()
            if !editMode {
                Button(action: {}, label: {
                    Image(systemName: "trash.fill")
                        .font(.title3)
                })
                .buttonStyle(.plain)
                
            }
            else {
                Button {
                    toggle.toggle()
                } label: {
                    ZStack {
                        if task.status == .notCompleted {
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
                        else if task.status == .onReview {
                            Circle()
                                .stroke(
                                    Color.white,
                                    lineWidth: 2
                                )
                                .frame(width: 20)
                            
                            Circle()
                                .foregroundColor(.purple)
                                .frame(width: 12)
                        }
                        
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
        TaskCardView(toggle: .constant(true))
            .preferredColorScheme(.dark)
    }
}
