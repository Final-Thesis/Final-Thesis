//
//  SearchBar.swift
//  IColab
//
//  Created by Kevin Dallian on 07/09/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText : String
    var action : (String) -> Void
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("searchbar.text"))
            TextField("Search", text: $searchText)
                .foregroundColor(Color("searchbar.text"))
                .onChange(of: searchText) { newValue in
                    action(newValue)
                }
                .autocorrectionDisabled()
                .autocapitalization(.none)
            Spacer()
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .onAppear {
            self.searchText = ""
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("Search")) { s in
            print("\(s)")
        }
    }
}
