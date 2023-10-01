//
//  ContactListViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 27/09/23.
//

import Foundation

class ContactListViewModel: ObservableObject {
    @Published var contacts : [String] = []
    @Published var searchText : String = ""
    @Published var searchPressed : Bool = false
    @Published var filters : [String] = []
    
    
}
