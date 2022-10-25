//
//  TaskManager.swift
//  ToDoApp(Unit tests)
//
//  Created by Алексей Моторин on 21.10.2022.
//

import Foundation

class TaskManager {
    var tasksCount: Int {
        tasks.count
    }
    var doneTasksCount: Int {
        doneTasks.count
    }
    
    private var tasks: [Task] = []
    private var doneTasks: [Task] = []
    
    func add(_ task: Task) {
        tasks.append(task)
    }
    
    func task(at index: Int) -> Task {
        return tasks[index]
    }
    
    func checkTask(at index: Int) {
        doneTasks.append(tasks.remove(at: index))
    }
    
    func doneTask(at index: Int) -> Task {
        return doneTasks[index]
    }
}
