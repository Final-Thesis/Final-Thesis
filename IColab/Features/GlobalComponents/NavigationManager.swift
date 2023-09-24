//
//  NavigationManager.swift
//  IColab
//
//  Created by Kevin Dallian on 22/09/23.
//

import Foundation
import SwiftUI

class NavigationManager : ObservableObject {
    @Published var path : NavigationPath
    
    init(){
        path = NavigationPath()
    }
    
    public func popPath(){
        path.removeLast()
    }
}
