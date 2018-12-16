//
// Created by Wayne Delport on 2018/01/08.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

enum EmployeeType {
    case ENGINEER
    case SALESMAN
    case MANAGER
}

class Employee {
    private let type: EmployeeType

    init(type: EmployeeType) {
        self.type = type
    }

    func payTotal() -> Int {
        switch (type) {
        case .ENGINEER:
            return 1000
        case .SALESMAN:
            return 10
        case .MANAGER:
            return 100
        }
    }
}
