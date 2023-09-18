//
//  Education.swift
//  IColab
//
//  Created by Kevin Dallian on 14/09/23.
//

import Foundation

class Education : Background {
    override init(title: String, company: String, startDate: Date, endDate: Date, desc: String) {
        super.init(title: title, company: company, startDate: startDate, endDate: endDate, desc: desc)
    }
    
    override func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(company)
        hasher.combine(startDate)
        hasher.combine(endDate)
        hasher.combine(desc)
    }
    
    static func == (lhs: Education, rhs: Education) -> Bool {
        return lhs.title == rhs.title &&
        lhs.company == rhs.company &&
        lhs.startDate == rhs.endDate &&
        lhs.endDate == rhs.endDate &&
        lhs.desc == rhs.desc
    }
}
