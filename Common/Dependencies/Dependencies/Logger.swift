//
//  Logger.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 07/06/21.
//  Copyright © 2021 Depop. All rights reserved.
//

import Foundation

@objc public protocol LoggerModuleProtocol {
    func loggerService() -> String
    func writeLogs(log: String)
    func readLogs()
    @objc optional func sendLogs()
}

extension Dependencies {
    public var loggerModule: LoggerModuleProtocol {
        return resolve(LoggerModuleProtocol.self)!
    }
}
