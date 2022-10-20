//
//  Task.swift
//  ToDoApp(Unit tests)
//
//  Created by Алексей Моторин on 20.10.2022.
//

import Foundation

struct Task {
    var title: String
    var description: String?
    private(set)var date: Date?
    
    init(title: String, description: String? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
    }
}
