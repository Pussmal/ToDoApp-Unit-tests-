//
//  ToDoApp_Unit_tests_UITestsLaunchTests.swift
//  ToDoApp(Unit tests)UITests
//
//  Created by Алексей Моторин on 20.10.2022.
//

import XCTest
@testable import ToDoApp_Unit_tests_

final class ToDoApp_Unit_tests_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
