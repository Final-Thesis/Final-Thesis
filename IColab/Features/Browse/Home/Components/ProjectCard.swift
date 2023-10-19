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
                .font(.title3)
                .fontWeight(.bold)
            Text("\(project.startDate.formatted(date: .numeric, time: .omitted))")
                .font(.caption)
            Text("\(project.desc)")
                .multilineTextAlignment(.leading)
                .padding(.top, 1)
                .font(.caption)
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
        ProjectCard(project: MockProjects.array[0])
    }
}
