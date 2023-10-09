//
//  CurrentTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentTaskView: View {
    @StateObject var vm: CurrentTaskViewModel
    
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
            ScrollView {
                Group {
                    if pickerSelector == 1 {
                        ForEach(0..<vm.tasks.count, id: \.self) { i in
                            if vm.tasks[i].status == .notCompleted {
                                TaskCardView(task: vm.tasks[i], toggle: $vm.toggles[i])
                            }
                        }
                    }
                    else if pickerSelector == 2 {
                        ForEach(0..<vm.tasks.count, id: \.self) { i in
                            if vm.tasks[i].status == .onReview {
                                TaskCardView(task: vm.tasks[i], toggle: $vm.toggles[i])
                            }
                        }
                    }
                    else if pickerSelector == 3 {
                        ForEach(0..<vm.tasks.count, id: \.self) { i in
                            if vm.tasks[i].status == .completed {
                                TaskCardView(task: vm.tasks[i], toggle: $vm.toggles[i])
                            }
                        }
                    }
                    
                }
                .padding(4)
            }
            
            if pickerSelector == 1 {
                ButtonComponent(title: "Submit", width: 360) {
                    print(vm.tasks)
                    vm.submitTasks()
                    print(vm.tasks)
                }
                .padding(.top)
            }
            Spacer()
        }
        .padding()
    }
}

//struct CurrentTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        CurrentTaskView()
//            .preferredColorScheme(.dark)
//    }
//}
