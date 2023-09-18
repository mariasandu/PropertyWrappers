//
//  PropertyWrappersApp.swift
//  PropertyWrappers
//
//  Created by Maria Sandu on 18.09.2023.
//

import SwiftUI

@main
struct PropertyWrappersApp: App {
    
    let taskList = TaskList() // Create the shared task list
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(taskList) // Inject the shared task list
        }
    }
    
    
}
