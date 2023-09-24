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
                CurrentMilestoneView()
                Divider()
                    .background(.gray)
                Group {
                    ProjectButtonView()
                    ProjectButtonView()
                    ProjectButtonView()
                    ProjectButtonView()
                    ProjectButtonView()
                }
            }
        }
    }
}

struct ProjectOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectOverviewView(project: Mock.projects[0])
            .preferredColorScheme(.dark)
    }
}
