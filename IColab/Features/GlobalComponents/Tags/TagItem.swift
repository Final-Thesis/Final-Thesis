//
//  TagItem.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct TagItem: View {
    var tagText : String
    var editMode: Bool
    var colorBackground : Color
    
    init(tagText: String, editMode: Bool = false, colorBackground: Color = Color(.purple)) {
        self.tagText = tagText
        self.editMode = editMode
        self.colorBackground = colorBackground
    }
    var body: some View {
        HStack {
            Text(tagText)
                .font(.caption2)
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
        .background(colorBackground)
        .cornerRadius(12)
    }
}

struct TagItem_Previews: PreviewProvider {
    static var previews: some View {
        TagItem(tagText: "Hello")
    }
}
