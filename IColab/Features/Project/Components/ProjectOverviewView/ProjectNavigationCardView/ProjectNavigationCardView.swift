//
//  ProjectNavigationCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 27/09/23.
//

import SwiftUI

struct ProjectNavigationCardView: View {
    @EnvironmentObject var vm: ProjectOverviewViewModel
    
    var body: some View {
        VStack {
            NavigationLink {
//                ProjectDescriptionView(project: vm.getProject())
//                    .environmentObject(vm)
            } label: {
                ProjectButtonView(
                    icon: "newspaper.circle",
                    title: "Project Description",
                    description: "Get in depth overview of the current project, it's requirements, and summary"
                )
            }
            NavigationLink {
                ContactListView()
                    .environmentObject(vm)
            } label: {
                ProjectButtonView(
                    icon: "envelope.circle",
                    title: "Contact",
                    description: "See member of the project and contact them"
                )
            }
            NavigationLink {
                MilestonesView(vm: EditProjectViewModel(milestones: vm.project.milestones))
            } label: {
                ProjectButtonView(
                    icon: "star.circle",
                    title: "Milestone",
                    description: "See how far the project have gone, and details about the milestones"
                )
            }
            NavigationLink {
                ResourceRequirementView()
            } label: {
                ProjectButtonView(
                    icon: "folder.circle",
                    title: "Resource Requirements",
                    description: "Information on the personnel, equipment, materials, and budget needed to complete the project."
                )
            }
            NavigationLink {
//                CurrentTaskView(vm: CurrentTaskViewModel(uid: vm.getCurrentGoal().id))
                CurrentTaskView(vm: CurrentTaskViewModel(project: vm.project))

            } label: {
                ProjectButtonView(
                    icon: "bag.circle",
                    title: "Current Task",
                    description: "Current project or task that must be done according to the deadline"
                )
            }
                
        }
    }
}

#Preview {
    ProjectNavigationCardView()
}
