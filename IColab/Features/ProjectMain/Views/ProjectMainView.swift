//
//  ProjectMainView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct ProjectMainView: View {
    @State var searchText: String = ""
    @State var picker: Int = 1
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Projects")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                Spacer()
            }
            HStack {
                SearchBar(searchText: $searchText, action: { _ in print("search")})
                Button(
                    action: {print("Filter")},
                    label: {
                        Image(systemName: "line.3.horizontal.circle")
                        .font(.title)
                    }
                )
                .buttonStyle(.plain)
            }
            
            Picker("Project Picker", selection: $picker) {
                Text("Joined Project").tag(1)
                Text("Owned Project").tag(2)
            }
            .pickerStyle(.segmented)
            ScrollView {
                ForEach(0..<10, id: \.self) { _ in
                    ProjectMainCardView()
                }
            }
            .padding()
        }
        .padding()
        
    }
}

#Preview {
    ProjectMainView()
        .preferredColorScheme(.dark)
}

