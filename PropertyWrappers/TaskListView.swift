//
//  TaskListView.swift
//  PropertyWrappers
//
//  Created by Maria Sandu on 18.09.2023.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var taskList: TaskList // Inject the shared task list

    var body: some View {
        NavigationView {
            List {
                ForEach(taskList.tasks) { task in
                    TaskRow(task: task)
                }
            }
            .navigationTitle("Task List")
        }
    }
}



struct TaskListView_Previews: PreviewProvider {
    static let taskList = TaskList() // Create a sample TaskList for the preview

        static var previews: some View {
            TaskListView()
                .environmentObject(taskList) // Inject the shared task list for the preview
        }
}
