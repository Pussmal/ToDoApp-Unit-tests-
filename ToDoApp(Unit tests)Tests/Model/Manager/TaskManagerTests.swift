//
//  TaskManagerTests.swift
//  ToDoApp(Unit tests)Tests
//
//  Created by Алексей Моторин on 21.10.2022.
//

import XCTest
@testable import ToDoApp_Unit_tests_

final class TaskManagerTests: XCTestCase {

    var sut: TaskManager!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = TaskManager()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testInitManagerWithZeroTasks() {
        XCTAssertEqual(sut.tasksCount, 0)
    }
    
    func testInitManagerWithZeroDoneTasks() {
        XCTAssertEqual(sut.doneTasksCount, 0)
    }
    
    func testAddTaskIncrementTaskCount() {
        let task = Task(title: "Foo")
        sut.add(task)
        
        XCTAssertEqual(sut.tasksCount, 1)
    }
    
    func testTaskAtIndexIsAddedTask() {
        let task = Task(title: "Foo")
        sut.add(task)
        
        let returnedTask = sut.task(at: 0)
        
        XCTAssertEqual(task.title, returnedTask.title)
    }
    
    func testCheckTasktIndexChangesCounts() {
        let task = Task(title: "Foo")
        sut.add(task)
        
        sut.checkTask(at: 0)
        
        XCTAssertEqual(sut.tasksCount, 0)
        XCTAssertEqual(sut.doneTasksCount, 1)
        
    }
    
    func testTaskCheckedRemoveFromTasks() {
        let firstTask = Task(title: "Foo")
        let secondTask = Task(title: "Bar")
        sut.add(firstTask)
        sut.add(secondTask)
    
        sut.checkTask(at: 0)
        
        XCTAssertEqual(sut.task(at: 0).title, "Bar")
    }
    
    func testDoneTaskAddReturnesCheckedTask() {
        let task = Task(title: "Foo")
        sut.add(task)
        
        sut.checkTask(at: 0)
        let returnedTask = sut.doneTask(at: 0)
        
        XCTAssertEqual(returnedTask.title, task.title)
    }

}
