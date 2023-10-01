//
//  InputTagPopupView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTagPopupView: View {
    @EnvironmentObject var vm: ProjectOverviewViewModel
    
    @Binding var tag: [String]
    @Binding var popupToggle: Bool
    var tags: [String] = ["HealthKit", "CoreData", "Vision", "CloudKit", "LocationKit"]
    @State var pickerSelector: String = "Vision"
    
    var body: some View {
        VStack {
            HStack {
                Text("Pick Tag")
                    .font(.headline)
                Spacer()
                Button {
                    withAnimation {
                        popupToggle.toggle()
                    }
                } label: {
                    Image(systemName: "x.circle")
                }

                }
            Picker("Tags Picker", selection: $pickerSelector) {
                ForEach(tags, id: \.self) { tag in
                    Text(tag).tag(tag)
                }
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            Button {
                withAnimation {
                    popupToggle.toggle()
                }
//                vm.getTestProject().tags.append(pickerSelector)
                tag.append(pickerSelector)
            } label: {
                Text("Confirm")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(Color("gray"))
    }
}

struct InputTagPopupView_Previews: PreviewProvider {
    static var previews: some View {
        InputTagPopupView(tag: .constant([]), popupToggle: .constant(true))
            .colorScheme(.dark)
    }
}
