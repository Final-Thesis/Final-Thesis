//
//  InputDateView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputDateView: View {
    @State private var date = Date.now
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Input Date")
                    .font(.headline)
                HStack {
                    DatePicker("Date Picker", selection: $date, displayedComponents: .date)
                        .labelsHidden()
                    Spacer()
                    Image(systemName: "calendar")

                    
                }
                Divider()
                    .foregroundColor(.white)
            }
            
            //Text("Date is \(date.formatted(date: .long, time: .omitted))")
        }
    }
}

struct InputDateView_Previews: PreviewProvider {
    static var previews: some View {
        InputDateView()
    }
}
