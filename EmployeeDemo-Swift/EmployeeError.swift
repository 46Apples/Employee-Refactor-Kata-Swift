//
// Created by Wayne Delport on 2018-12-18.
// Copyright (c) 2018 com.FortySixApples. All rights reserved.
//

import Foundation

enum EmployeeError: Error {
    case unknownEmployee
}

extension EmployeeError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unknownEmployee:
            return "Unknown Employee Type"
        }
    }
}
