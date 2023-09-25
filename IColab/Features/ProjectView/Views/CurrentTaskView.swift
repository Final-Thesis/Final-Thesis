//
//  CurrentTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentTaskView: View {
    var tasks: [Task] = Mock.tasks
    @State var pickerSelector = 1
    
    var body: some View {
        VStack {
            Picker("Task Type", selection: $pickerSelector) {
                Text("Available").tag(1)
                Text("On Review").tag(2)
                Text("Completed").tag(3)
            }
            .pickerStyle(.segmented)
            .padding(.bottom)
            Group {
                if pickerSelector == 1 {
                    ForEach(tasks) { task in
                        if task.status == .notCompleted {
                            TaskCardView(task: task)
                        }
                    }
                }
                else if pickerSelector == 2 {
                    ForEach(tasks) { task in
                        if task.status == .onReview {
                            TaskCardView(task: task)
                        }
                    }
                }
                else if pickerSelector == 3 {
                    ForEach(tasks) { task in
                        if task.status == .completed {
                            TaskCardView(task: task)
                        }
                    }
                }
                
            }
            .padding(4)
            
            if pickerSelector == 1 {
                ButtonComponent(title: "Submit", width: 360) {
                    print("test")
                }
                .padding(.top)
            }
            Spacer()
        }
        .padding()
    }
}

struct CurrentTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTaskView()
            .preferredColorScheme(.dark)
    }
}
