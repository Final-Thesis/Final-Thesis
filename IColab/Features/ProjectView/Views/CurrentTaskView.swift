//
//  CurrentTaskView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentTaskView: View {
    @State var pickerSelector = 1
    
    var body: some View {
        VStack {
            Picker("Flavor", selection: $pickerSelector) {
                Text("Chocolate").tag(1)
                Text("Vanilla").tag(2)
                Text("Strawberry").tag(3)
            }
            .pickerStyle(.segmented)
            ForEach(1...5, id: \.self) { task in
                TaskCardView()
            }
            if pickerSelector == 1 {
                ButtonComponent(title: "Submit", width: 360) {
                    print("test")
                }
            }
        }
    }
}

struct CurrentTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTaskView()
            .preferredColorScheme(.dark)
    }
}
