//
//  FormDatePicker.swift
//  IColab
//
//  Created by Kevin Dallian on 22/09/23.
//

import SwiftUI

struct FormDatePicker: View {
    var title : String
    @Binding var date : Date
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                DatePicker("", selection: $date, displayedComponents: .date)
            }
            Divider()
                .frame(height: 1.5)
                .overlay(.primary)
        }
        
    }
}

struct FormDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        FormDatePicker(title: "Date", date: .constant(Date.now))
    }
}
