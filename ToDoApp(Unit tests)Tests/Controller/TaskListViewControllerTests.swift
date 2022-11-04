//
//  TaskListViewControllerTests.swift
//  ToDoApp(Unit tests)Tests
//
//  Created by Алексей Моторин on 04.11.2022.
//

import XCTest
@testable import ToDoApp_Unit_tests_

final class TaskListViewControllerTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTableViewNotNillWhenIsLoaded() {
        // при работе со сторибордом
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self))
        guard let sut = vc as? TaskListViewController else { return }
        sut.loadViewIfNeeded()
        
        /*
         при работе с кодом:
         let sut = TaskListViewController()
         sut.loadViewIfNeeded() // _ = sut.view -> тоже самое
         */
        XCTAssertNotNil(sut.tableView)
    }
}
