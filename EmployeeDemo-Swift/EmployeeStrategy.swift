//
// Created by Wayne Delport on 2018-12-31.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

class EmployeeStrategy {

    static func create(_ type: EmployeeType) throws -> EmployeeStrategy {
        switch type {
        case .engineer:
            return Engineer()
        case .salesman:
            return Salesman()
        case .manager:
            return Manager()
        default: throw EmployeeError.unknownEmployee
        }
    }

    func payTotal() throws -> Int {
        throw EmployeeError.methodShouldBeOverridden("\(#function)")
    }
}
