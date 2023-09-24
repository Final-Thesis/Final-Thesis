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
        VStack {
            Group {
                Text("Acne Detection")
                HStack{
                    ForEach(project.tags, id: \.self){ tag in
                        TagItem(tagText: tag)
                    }
                }
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            }
            
        }
    }
}

struct ProjectOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectOverviewView(project: Mock.projects[0])
    }
}
