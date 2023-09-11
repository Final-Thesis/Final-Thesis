//
//  TagManager.swift
//  IColab
//
//  Created by Kevin Dallian on 09/09/23.
//

import Foundation

class TagManager : ObservableObject{
    @Published var tags : [String] = []
    
    init(){
        self.tags = getTags()
    }
    
    private func getTags() -> [String]{
        Mock.tags
    }
    
    public func getRows() -> Int{
        var row = 0
        if tags.count % 4 == 0 {
            row = tags.count/4
        }else{
            row = tags.count/4 + 1
        }
        return row
    }
}
