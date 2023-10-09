//
//  EditGoalView.swift
//  IColab
//
//  Created by Jeremy Raymond on 09/10/23.
//

import SwiftUI

struct EditGoalView: View {
    @EnvironmentObject var vm: EditProjectViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var role: Role
    var goal: Goal
    
    var body: some View {
        VStack {
            InputTitleView(title: "Title", text: $vm.title)
            InputNumberView(title: "Nominal", nominal: $vm.nominal)
            InputDescriptionView(title: "Description", text: $vm.desc)
            InputDateView(date: $vm.dueDate)
            InputTaskView()
            ButtonComponent(title: "Edit Goal", width: 320) {
                vm.editGoal(role: role, goal: goal)
                
                vm.objectWillChange.send()
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .environmentObject(vm)
        .padding(32)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    vm.deleteGoal(role: role, goal: goal)
                    
                    vm.objectWillChange.send()
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "trash.fill")
                        .font(.headline)
                }

            }
        }
    }
}

//#Preview {
//    EditGoalView()
//}
