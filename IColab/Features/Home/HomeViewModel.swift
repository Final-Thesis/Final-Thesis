//
//  HomeViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

class HomeViewModel : ObservableObject{
    @Published var projects : [Project] = []
    init(){
        projects = Mock.projects
    }
}
