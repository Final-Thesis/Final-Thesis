//
//  GridView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/10/23.
//

import SwiftUI

struct GridView<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

#Preview {
    GridView(rows: 2, columns: 2, content: { row, column in
        Text("Row \(row) Column \(column)")
    } )
}
