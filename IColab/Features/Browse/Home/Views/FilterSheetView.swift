//
//  FilterSheetView.swift
//  IColab
//
//  Created by Kevin Dallian on 08/09/23.
//

import SwiftUI

struct FilterSheetView: View {
    @State var filter : [String] = []
    @State var startDate : Date = Date.now
    @State var endDate : Date = Date.now
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Project Tags")
                    .fontWeight(.bold)
                TagsView(filter: $filter)
                Text("Payment Amount")
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                HStack{
                    VStack(alignment: .leading){
                        Text("Start Date")
                            .fontWeight(.bold)
                        DatePicker(selection: $startDate, displayedComponents: .date) {
                            Text("Asd")
                        }.labelsHidden()
                    }
                    
                    VStack(alignment: .trailing){
                        Text("End Date")
                            .fontWeight(.bold)
                        DatePicker(selection: $endDate, displayedComponents: .date) {
                            Text("asd")
                        }.labelsHidden()
                    }
                }.padding(.bottom, 20)
            }
            ButtonComponent(title: "Filter", width: 200) {
                print("Filter")
            }
        }
    }
}

struct FilterSheetView_Previews: PreviewProvider {
    static var previews: some View {
        FilterSheetView()
    }
}
