//
//  ProjectOverviewView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectOverviewView: View {
    var project: Project
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Acne Detection")
                            .font(.largeTitle)
                            .bold()
                        HStack{
                            ForEach(project.tags, id: \.self){ tag in
                                TagItem(tagText: tag)
                            }
                        }
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    }
                    .padding()
                    .background(.purple)
                    CurrentMilestoneView(milestone: Mock.milestones[0])
                    Divider()
                        .background(.gray)
                    Group {
                        NavigationLink {
                            ProjectDescriptionView(project: Mock.projects[0])
                        } label: {
                            ProjectButtonView(
                                icon: "newspaper.circle",
                                title: "Project Description",
                                description: "Get in depth overview of the current project, it's requirements, and summary"
                            )
                        }
                        NavigationLink {
                            ContactListView()
                        } label: {
                            ProjectButtonView(
                                icon: "envelope.circle",
                                title: "Contact",
                                description: "See member of the project and contact them"
                            )
                        }
                        NavigationLink {
                            MilestonesView()
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
                            CurrentTaskView()
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
            .toolbarBackground(Color.purple, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Project Overview")
        }
        

        //.navigationBarBackButtonHidden()
        
    }
}

struct ProjectOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectOverviewView(project: Mock.projects[0])
            .preferredColorScheme(.dark)
    }
}
