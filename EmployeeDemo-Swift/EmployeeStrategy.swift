//
// Created by Wayne Delport on 2018-12-31.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

class EmployeeStrategy {

    static func create(_ type: EmployeeType) throws -> EmployeeStrategy {
        return try EmployeeStrategyFactory.create(type)
    }

    func payTotal() throws -> Int {
        throw EmployeeError.methodShouldBeOverridden("\(#function)")
    }
}
