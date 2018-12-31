//
// Created by Wayne Delport on 2018/01/08.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

enum EmployeeType {
    case engineer
    case salesman
    case manager
}

class Employee {
    private var employeeStrategy = EmployeeStrategy()

    init(type: EmployeeType) throws {
        try setTypeCode(type: type)
    }

    private func setTypeCode(type: EmployeeType) throws {
        switch type {
        case .engineer:
            employeeStrategy = Engineer()
        case .salesman:
            employeeStrategy = Salesman()
        case .manager:
            employeeStrategy = Manager()
        default: throw EmployeeError.unknownEmployee
        }
    }

    func payTotal() throws -> Int {
        switch try getTypeCode() {
        case .engineer:
            return 1000
        case .salesman:
            return 10
        case .manager:
            return 100
        default: throw EmployeeError.unknownEmployee
        }
    }

    private func getTypeCode() throws -> EmployeeType {
        return try employeeStrategy.getTypeCode()
    }
}
