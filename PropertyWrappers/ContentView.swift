//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Maria Sandu on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var userData = UserData()
    
//    In this example, userData will be created and persisted for the lifetime of the ContentView.
    @StateObject var userData = UserData()
    
    @EnvironmentObject var taskList: TaskList // Access the shared task list
    @State private var newTaskName = ""
    
    var body: some View {
                  
        VStack {
            Text("Hello, \(userData.username)!")
            TextField("New Task", text: $newTaskName)
                .padding()
            Button("Add Task") {
                taskList.tasks.append(Task(name: newTaskName))
                newTaskName = ""
            }
            TaskListView() // Display the list of tasks
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TaskList()) // Provide a default TaskList for the preview
    }
    
}
