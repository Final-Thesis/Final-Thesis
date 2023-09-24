//
//  Experience.swift
//  IColab
//
//  Created by Kevin Dallian on 14/09/23.
//

import Foundation

class Experience : Background {
    override init(title: String, company: String, startDate: Date, endDate: Date, desc: String) {
        super.init(title: title, company: company, startDate: startDate, endDate: endDate, desc: desc)
    }
    
    override init(copyFrom other: Background) {
        super.init(copyFrom: other)
    }
}
