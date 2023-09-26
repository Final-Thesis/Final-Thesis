//
//  ProjectCard.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct ProjectCard: View {
    var project : Project
    var body: some View {
        VStack(alignment: .leading){
            Color(.purple)
                .frame(height: 100)
                .cornerRadius(12)
            Text("\(project.title)")
                .font(.title2)
                .fontWeight(.bold)
            Text("\(project.startDate.formatted(date: .numeric, time: .omitted))")
            Text("\(project.desc)")
                .padding(.top, 1)
            HStack{
                ForEach(project.tags, id: \.self){ tag in
                    TagItem(tagText: tag)
                }
            }
        }
        .padding()
        .background(.ultraThickMaterial)
        .cornerRadius(12)
        
        
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard(project: Mock.projects[0])
    }
}
