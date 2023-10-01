//
//  PickerView.swift
//  IColab
//
//  Created by Kevin Dallian on 03/09/23.
//

import SwiftUI

struct PickerView: View {
    @Binding var pickerSelection : PickerItem
    var allItems : [PickerItem]
    var body: some View {
        Picker("", selection: $pickerSelection) {
            ForEach(allItems, id: \.self){ selection in
                Text("\(selection.rawValue)")
            }
        }.pickerStyle(.segmented)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(pickerSelection: .constant(.overview), allItems: [.overview, .milestone])
    }
}

enum PickerItem : String, CaseIterable {
    case overview = "Overview"
    case milestone = "Milestone"
    case portofolio = "Portofolio"
}
