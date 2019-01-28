//
// Created by Wayne Delport on 2018/01/08.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

class Employee {
    private var employeeStrategy = EmployeeStrategy()

    init(type: EmployeeType) throws {
        try setTypeCode(type: type)
    }

    private func setTypeCode(type: EmployeeType) throws {
        employeeStrategy = try EmployeeStrategyFactory.create(type)
    }

    func payTotal() throws -> Int {
        return try employeeStrategy.payTotal()
    }
}
