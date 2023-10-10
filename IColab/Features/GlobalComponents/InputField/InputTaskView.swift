//
//  InputTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTaskView: View {
    @EnvironmentObject var vm: EditProjectViewModel
//    @Binding var tasks: [Task]
    
    var body: some View {
        VStack {
            HStack {
                Text("Input Members")
                    .font(.headline)
                Spacer()
                NavigationLink {
                    CreateTaskView()
                        .environmentObject(vm)
                } label: {
                    Image(systemName: "plus.circle.fill")
                }
                .buttonStyle(.plain)
            }
            ScrollView {
                ForEach(vm.tasks) { task in
                    InputTaskCardView(task: task)
                        .padding(4)
                }
            }
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
        }
    }
}

//struct InputTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        InputTaskView()
//            .preferredColorScheme(.dark)
//    }
//}
