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
    private let type: EmployeeType

    init(type: EmployeeType) {
        self.type = type
    }

    func payTotal() -> Int {
        switch (type) {
        case .engineer:
            return 1000
        case .salesman:
            return 10
        case .manager:
            return 100
        }
    }
}
