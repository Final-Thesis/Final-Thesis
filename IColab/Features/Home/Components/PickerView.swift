//
//  PickerView.swift
//  IColab
//
//  Created by Kevin Dallian on 03/09/23.
//

import SwiftUI

struct PickerView: View {
    @Binding var pickerSelection : PickerItem
    var body: some View {
        Picker("", selection: $pickerSelection) {
            ForEach(PickerItem.allCases, id: \.self){ selection in
                Text("\(selection.rawValue)")
            }
        }.pickerStyle(.segmented)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(pickerSelection: .constant(.overview))
    }
}
