//
//  TagItem.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct TagItem: View {
    var tagText : String
    var body: some View {
       Text("\(tagText)")
            .font(.caption2)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .foregroundColor(.white)
            .background(
                Color("purple")
                    .cornerRadius(16)
            )
    }
}

struct TagItem_Previews: PreviewProvider {
    static var previews: some View {
        TagItem(tagText: "Hello")
    }
}
