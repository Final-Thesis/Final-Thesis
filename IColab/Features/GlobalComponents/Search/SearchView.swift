//
//  SearchView.swift
//  IColab
//
//  Created by Jeremy Raymond on 10/10/23.
//

import SwiftUI

struct SearchView<Element: Searchable>: View {
    @Binding var array: [Element]
    @StateObject var vm: SearchViewModel<Element>
    @FocusState var isInputActive: Bool
    
    var hasFilter: Bool = true
    var filterView: AnyView?
    
    @State var filterToggle: Bool = false
    
    var body: some View {
        HStack{
            SearchBar(searchText: $vm.searchTitle){ search in
                array = vm.getSearchArrays(array: array)
            }
            .focused($isInputActive)
            if hasFilter {
                Button {
                    filterToggle.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
        }
        .sheet(isPresented: $filterToggle, content: {
            filterView
                .presentationDetents([.fraction(0.4)])
                .presentationDragIndicator(.visible)
        })
    }
}

//#Preview {
//    SearchView()
//}
