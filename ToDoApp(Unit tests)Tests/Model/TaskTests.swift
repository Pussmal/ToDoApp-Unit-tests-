//
//  TaskTests.swift
//  ToDoApp(Unit tests)Tests
//
//  Created by Алексей Моторин on 20.10.2022.
//

import XCTest
@testable import ToDoApp_Unit_tests_
import CoreLocation

final class TaskTests: XCTestCase {

    func testInitTaskWithTitle() {
        let task = Task(title: "Foo")

        XCTAssertNotNil(task) // проверка объекта что не nil
    }
    
    func testInitTaskWithTitleAndDescription() {
        let task = Task(title: "Foo", description: "Bar")

        XCTAssertNotNil(task) // проверка объекта что не nil
    }

    // проверяем что в наш таск мы можем установить title
    func testWhenGivenTitleSetsTitle() {
        let task = Task(title: "Foo")
        XCTAssertEqual(task.title, "Foo", "Titles should be equals")
    }
    
    func testWhenGivenDescriptionSetsDescriptions() {
        let task = Task(title: "Foo", description: "Bar")
        XCTAssertEqual(task.description, "Bar", "Descriptions should be equal")
    }
    
    // тестируем что у нашей даты будет своя дата
    func testTaskInitsWithDate() {
        let task = Task(title: "Foo")
        XCTAssertNotNil(task.date)
    }
    
    func testWhenGivenLocationSetsLocation() {
        let location = Location(name: "Foo")
        let task = Task(title: "Foo", description: "Bar", location: location)
        
        XCTAssertEqual(task.location, location)
        
    }
    
}
