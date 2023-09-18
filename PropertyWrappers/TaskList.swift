//
//  Task.swift
//  PropertyWrappers
//
//  Created by Maria Sandu on 18.09.2023.
//

import Foundation

class TaskList: ObservableObject {
    @Published var tasks: [Task] = []
}

struct Task: Identifiable {
    static var mockTask: Task {
        .init(name: "Read a book")
    }
    
    var id = UUID()
    var name: String
    var isCompleted = false

}
