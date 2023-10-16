//
//  InputTaskCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct InputTaskCardView: View {
    @EnvironmentObject var vm: EditProjectViewModel
    var task: Task
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.headline)
            Spacer()
            Button(action: {
                vm.deleteTask(task: task)
            }, label: {
                Image(systemName: "trash.fill")
                    .font(.headline)
            })
        }
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

//#Preview {
//    InputTaskCardView(task: vm.tasks[0])
//        .preferredColorScheme(.dark)
//}
