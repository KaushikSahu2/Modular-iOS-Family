//
//  User.swift
//  Service
//
//  Created by Kaushik Sahu on 17/05/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import UIKit

public struct PushIdentity {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

public struct Product {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

extension PushIdentity: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Push = \(identifier)"
    }
}

extension Product: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Storage = \(identifier)"
    }
}
