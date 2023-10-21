//
//  IColabApp.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 7/30/23.
//

import SwiftUI
import Firebase

@main
struct IColabApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
 
//    init(){
//        FirebaseApp.configure()
//    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOption: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
    
}
