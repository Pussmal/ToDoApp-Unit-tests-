//
//  TaskListViewControllerTests.swift
//  ToDoApp(Unit tests)Tests
//
//  Created by Алексей Моторин on 04.11.2022.
//

import XCTest
@testable import ToDoApp_Unit_tests_

final class TaskListViewControllerTests: XCTestCase {
    
    var sut: TaskListViewController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self)) as? TaskListViewController
        sut.loadViewIfNeeded()
        
        /*
         при работе с кодом:
         let sut = TaskListViewController()
         sut.loadViewIfNeeded() // _ = sut.view -> тоже самое
         */
        
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // проверяем что загрузились свойства контроллера
    func testWhenIsLoadedTableViewNotNill() {
        XCTAssertNotNil(sut.tableView)
    }
    
    func testWhenViewIsLoadedDataProviderIsNotNill() {
        XCTAssertNotNil(sut.dataProvider)
    }
    
    // проверяем что установился делагат и дата сорс tableView
    func testWhenIsLoadedViewTableViewDelegateSet() {
        XCTAssertTrue(sut.tableView.delegate is DataProvider)
    }
    
    func testWhenIsLoadedViewTableViewDataSourceSet() {
        XCTAssertTrue(sut.tableView.dataSource is DataProvider)
    }
    
    func testWhenIsLoadedTableViewDelegateEqulsTableViewDataSource() {
        XCTAssertEqual(
            sut.tableView.delegate as? DataProvider,
            sut.tableView.dataSource as? DataProvider
        )
    }

}
