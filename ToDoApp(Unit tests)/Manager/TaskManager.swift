//
//  TaskManager.swift
//  ToDoApp(Unit tests)
//
//  Created by Алексей Моторин on 21.10.2022.
//

import Foundation

class TaskManager {
    var tasksCount = 0
    var doneTasksCount = 0
    
    func add(_ task: Task) {
        tasksCount += 1
    }
    
    func task(at index: Int) -> Task {
        return Task(title: "Foo")
    }
}
