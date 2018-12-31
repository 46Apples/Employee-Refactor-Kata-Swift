//
// Created by Wayne Delport on 2018-12-31.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

class Manager: EmployeeStrategy {
    override func getTypeCode() -> EmployeeType {
        return .manager
    }
}
