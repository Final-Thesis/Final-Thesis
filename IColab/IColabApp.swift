//
//  IColabApp.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI

@main
struct IColabApp: App {
    init(){
        Mock.init()
    }
    var body: some Scene {
        WindowGroup {
//            ProjectOverviewView(vm: ProjectOverviewViewModel(project: Mock.accounts[0].projectsOwned![0]))
            ContentView()
        }
    }
}
