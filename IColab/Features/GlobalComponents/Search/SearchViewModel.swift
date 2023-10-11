//
//  SearchViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 10/10/23.
//

import Foundation

class SearchViewModel<Element: Searchable>: ObservableObject {
    var array: [Element]
    @Published var searchTitle : String = ""
    @Published var searchPressed : Bool = false
    
    init(array: [Element]) {
        self.array = array
    }
    
    func getSearchArrays(array: [Element]) -> [Element] {
        let array = self.array
        
        if searchTitle.isEmpty{
            return array
        }
        let allData = array
        let filteredArray = allData.filter { chat in
            let chatLowerCased = chat.title.lowercased()
            return chatLowerCased.contains(searchTitle.lowercased())
        }
        return filteredArray
    }
}
