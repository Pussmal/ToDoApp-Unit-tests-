//
//  Task.swift
//  ToDoApp(Unit tests)
//
//  Created by Алексей Моторин on 20.10.2022.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    private(set)var date: Date?
    let location: Location?
    
    init(title: String, description: String? = nil, location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}

extension Task: Equatable {
    static func == ( lhs: Task, rhs: Task) -> Bool {
        guard
            lhs.title == rhs.title,
            lhs.description == rhs.description,
            lhs.location == rhs.location else { return false }
        return true
    }
}
