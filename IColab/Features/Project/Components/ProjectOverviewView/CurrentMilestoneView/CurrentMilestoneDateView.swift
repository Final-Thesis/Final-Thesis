//
//  CurrentMilestoneDateView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct CurrentMilestoneDateView: View {
    var date: Date = Date.now
    
    var body: some View {
        VStack {
            Text("\(self.getDayFromDate(date: date))")
            Text("\(self.getAbbreviatedMonthFromDate(date: date))")
                .bold()
            Text("\(self.getYearFromDate(date: date))")
        }
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.purple, lineWidth: 2)
        )
    }
    
    func getDayFromDate(date: Date) -> Int {
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        return day
    }
    
    func getAbbreviatedMonthFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        let month = dateFormatter.string(from: date)
        return month
    }
    
    func getYearFromDate(date: Date) -> String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        // For some reason the year shows up with a ',' mark, maybe because it's an Integer. So the year is first formatted using this numberFormatter and changed into a string
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .none
        if let formattedYear = numberFormatter.string(from: NSNumber(value: year)) {
            return formattedYear
        } else {
            return "\(year)"
        }
    }
}

#Preview {
    CurrentMilestoneDateView()
}
