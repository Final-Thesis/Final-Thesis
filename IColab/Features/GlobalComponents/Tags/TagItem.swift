//
//  TagItem.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct TagItem: View {
    var tagText : String
    var editMode: Bool = false
    
    var body: some View {
        HStack {
            Text(tagText)
            if editMode {
                Button {
                    //
                } label: {
                    Image(systemName: "x.circle.fill")
                }
                .buttonStyle(.plain)
            }
            
        }
        .padding(8)
        .background(.purple)
        .cornerRadius(12)
    }
}

struct TagItem_Previews: PreviewProvider {
    static var previews: some View {
        TagItem(tagText: "Hello")
    }
}
