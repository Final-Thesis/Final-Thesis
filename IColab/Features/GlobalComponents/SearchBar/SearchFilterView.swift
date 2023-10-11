//
//  SearchFilterView.swift
//  IColab
//
//  Created by Jeremy Raymond on 10/10/23.
//

import SwiftUI

struct SearchFilterView<Element: Searchable>: View {
//    @StateObject var vm: SearchFilterViewModel<Chat>
    @Binding var array: [Element]
    @State var searchTitle: String = ""
    @FocusState var isInputActive: Bool
    
    @State var toggle: Bool = false
    
    var body: some View {
        HStack{
            SearchBar(searchText: $searchTitle){ search in
                array = self.getSearchResults(searchTitle: searchTitle, array: array)
//                vm.array = vm.getSearchResults()
//                array = Searchable.getSearchResults(searchTitle: searchText, array: array)
//                vm.searchChats(searchTitle: search)
            }
            .focused($isInputActive)
            Button {
                toggle.toggle()
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
        }
        .padding(.horizontal, 10)
        .padding()
    }
    
    func getSearchResults(searchTitle: String, array: [Element]) -> [Element] {
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

//#Preview {
//    SearchFilterView()
//}
