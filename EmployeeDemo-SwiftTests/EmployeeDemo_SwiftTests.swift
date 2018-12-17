//
//  EmployeeDemo_SwiftTests.swift
//  EmployeeDemo-SwiftTests
//
//  Created by Wayne Delport on 2018/01/08.
//  Copyright © 2018 com.FortySixApples. All rights reserved.
//

import XCTest
@testable import EmployeeDemo_Swift

class EmployeeDemo_SwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEngineerIsPaid1000() {
        let employee = Employee(type: .engineer)

        let actual = employee.payTotal()

        XCTAssertEqual(1000, actual)
    }

    func testSalesmanIsPaid10() {
        let employee = Employee(type: .salesman)

        let actual = employee.payTotal()

        XCTAssertEqual(10, actual)
    }

    func testManagerIsPaid100() {
        let employee = Employee(type: .manager)

        let actual = employee.payTotal()

        XCTAssertEqual(100, actual)
    }
}
