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
        switch try getTypeCode() {
        case .engineer:
            return 1000
        case .salesman:
            return 10
        case .manager:
            return 100
        default: throw EmployeeError.methodShouldBeOverridden("\(#function)")
        }
    }

    func getTypeCode() throws -> EmployeeType {
        throw EmployeeError.methodShouldBeOverridden("\(#function)")
    }
}
