//
//  ChatFilterView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct ChatFilterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Filter by")
                .font(.headline)
            HStack {
                FilterButtonView()
                FilterButtonView()
            }
            HStack {
                FilterButtonView()
                FilterButtonView()
            }
            
            Text("Sort by")
                .font(.headline)
            HStack {
                FilterButtonView()
                FilterButtonView()
            }
            HStack {
                FilterButtonView()
                FilterButtonView()
            }
            
            ButtonComponent(title: "Confirm", width: 360) {
                //do smt
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ChatFilterView()
}
