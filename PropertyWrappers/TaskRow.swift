//
//  TaskRow.swift
//  PropertyWrappers
//
//  Created by Maria Sandu on 18.09.2023.
//

import SwiftUI

struct TaskRow: View {
   var task: Task

    var body: some View {
        HStack {
            Text(task.name)
            Spacer()
            if task.isCompleted {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: Task.mockTask)
    }

    
}
