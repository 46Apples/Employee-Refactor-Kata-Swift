//
// Created by Wayne Delport on 2019-01-27.
// Copyright (c) 2019 com.FortySixApples. All rights reserved.
//

import Foundation

class EmployeeStrategyFactory {

    static func create(_ type: EmployeeType) throws -> EmployeeStrategy {
        switch type {
        case .engineer:
            return Engineer()
        case .salesman:
            return Salesman()
        case .manager:
            return Manager()
        case .developer:
            return Developer()
        default: throw EmployeeError.unknownEmployee
        }
    }
}
