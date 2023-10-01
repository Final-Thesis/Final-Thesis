//
//  TagsView.swift
//  IColab
//
//  Created by Kevin Dallian on 09/09/23.
//

import SwiftUI

struct TagsView: View {
    @StateObject var tagManager = TagManager()
    @Binding var filter : [String]
    var body: some View {
        VStack(alignment: .leading){
            ForEach(0..<tagManager.getRows(), id: \.self) { row in
                HStack(spacing: 10){
                    ForEach(0..<4, id:\.self){ column in
                        let index = row * 4 + column
                        if index < tagManager.tags.count {
                            TagItem(tagText: tagManager.tags[index])
                        }
                    }
                }
            }
        }
        
    }
}

struct TagsView_Previews: PreviewProvider {
    static var previews: some View {
        TagsView(filter: .constant(["SwiftUI", "CoreML"]))
    }
}
