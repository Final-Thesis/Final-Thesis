//
//  Background.swift
//  IColab
//
//  Created by Kevin Dallian on 18/09/23.
//

import Foundation

class Background : Hashable{
    var title : String
    var company : String
    var startDate : Date
    var endDate : Date
    var desc : String
    
    init(title: String, company: String, startDate: Date, endDate: Date, desc: String) {
        self.title = title
        self.company = company
        self.startDate = startDate
        self.endDate = endDate
        self.desc = desc
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(company)
        hasher.combine(startDate)
        hasher.combine(endDate)
        hasher.combine(desc)
    }
    
    static func == (lhs: Background, rhs: Background) -> Bool {
        return lhs.title == rhs.title &&
        lhs.company == rhs.company &&
        lhs.startDate == rhs.endDate &&
        lhs.endDate == rhs.endDate &&
        lhs.desc == rhs.desc
    }
}
