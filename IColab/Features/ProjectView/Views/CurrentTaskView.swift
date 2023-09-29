//
//  CurrentTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentTaskView: View {
    @State var toggles: [Bool] = [false, false, true, true, true, true, true, true, true]
    @State var tasks: [Task] = Mock.tasks
    @State var pickerSelector = 1
    
    func appendToggle() {
        for task in tasks {
            if task.status == .notCompleted {
                toggles.append(true)
            }
        }
    }
    
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
                    ForEach(0..<tasks.count) { i in
                        if tasks[i].status == .notCompleted {
                            TaskCardView(task: tasks[i], toggle: $toggles[i])
                        }
                    }
                }
                else if pickerSelector == 2 {
                    ForEach(0..<tasks.count) { i in
                        if tasks[i].status == .onReview {
                            TaskCardView(task: tasks[i], toggle: $toggles[i])
                        }
                    }
                }
                else if pickerSelector == 3 {
                    ForEach(0..<tasks.count) { i in
                        if tasks[i].status == .completed {
                            TaskCardView(task: tasks[i], toggle: $toggles[i])
                        }
                    }
                }
                
            }
            .padding(4)
            
            if pickerSelector == 1 {
                ButtonComponent(title: "Submit", width: 360) {
                    for (index, element) in tasks.enumerated() {
                        if toggles[index] == true {
                            tasks[index].setStatus(status: .onReview)
                        }
                    }
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
