//
//  AddGoalView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct AddGoalView: View {
    @EnvironmentObject var vm: EditProjectViewModel
    
    var role: Role
    
    var body: some View {
        VStack {
            InputTitleView(title: "Title", text: $vm.title)
            InputNumberView(title: "Nominal", nominal: $vm.nominal)
            InputDescriptionView(title: "Description", text: $vm.desc)
            InputDateView(date: $vm.dueDate)
            InputTaskView()
//            InputTaskView(tasks: $vm.tasks)
            ButtonComponent(title: "Add Goal", width: 320) {
                vm.addGoal(role: role)
            }
        }
        .environmentObject(vm)
        .padding(32)
    }
}

//#Preview {
//    AddGoalView()
//}
