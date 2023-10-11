//
//  SearchFilterViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 10/10/23.
//

import Foundation

class SearchFilterViewModel<Element: Searchable>: ObservableObject {
    @Published var array: [Element]
    @Published var searchTitle: String = ""
    
    init(array: [Element]) {
        self.array = array
    }
    
    func getSearchResults() -> [Element] {
        if searchTitle.isEmpty{
            return array
        }

        let filteredArray = array.filter { element in
            let titleLowerCased = element.title.lowercased()
            return titleLowerCased.contains(searchTitle.lowercased())
        }
        
        return filteredArray
    }
}
