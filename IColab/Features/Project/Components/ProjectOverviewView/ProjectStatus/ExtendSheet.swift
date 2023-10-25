//
//  ExtendSheet.swift
//  IColab
//
//  Created by Kevin Dallian on 25/10/23.
//

import SwiftUI

struct ExtendSheet: View {
    @EnvironmentObject var vm : ProjectOverviewViewModel
    @State var date : Date = Date.now
    @Binding var showSheet : Bool
    var body: some View {
        VStack{
            Text("Start Date")
                .bold()
            Text(.init("You can only extend for **three** more times. The extend limit is until **08-08-2023**."))
            DatePicker("Extend Date", selection: $date, displayedComponents: .date)
            ButtonComponent(title: "Confirm", width: 320) {
                vm.extend(date: date)
                showSheet = false
            }
        }
    }
}

#Preview {
    ExtendSheet(showSheet: .constant(false))
}
