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
        do {
            let employee = try Employee(type: .engineer)
            let actual = try employee.payTotal()

            XCTAssertEqual(1000, actual)
        } catch let error as EmployeeError {
            XCTFail(String(describing: error.errorDescription))
        } catch {
            XCTFail("\(error)")
        }
    }

    func testSalesmanIsPaid10() {
        do {
            let employee = try Employee(type: .salesman)
            let actual = try employee.payTotal()

            XCTAssertEqual(10, actual)
        } catch let error as EmployeeError {
            XCTFail(String(describing: error.errorDescription))
        } catch {
            XCTFail("\(error)")
        }
    }

    func testManagerIsPaid100() {
        do {
            let employee = try Employee(type: .manager)
            let actual = try employee.payTotal()

            XCTAssertEqual(100, actual)
        } catch let error as EmployeeError {
            XCTFail(String(describing: error.errorDescription))
        } catch {
            XCTFail("\(error)")
        }
    }

    func testDeveloperIsPaid1000000() {
        do {
            let employee = try Employee(type: .developer)
            let actual = try employee.payTotal()

            XCTAssertEqual(1000000, actual)
        } catch let error as EmployeeError {
            XCTFail(String(describing: error.errorDescription))
        } catch {
            XCTFail("\(error)")
        }
    }
}
