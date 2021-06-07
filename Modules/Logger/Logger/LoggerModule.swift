//
//  LoggerModule.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModule: V1 {
    
    public func v1() -> LoggerModuleProtocol {
        return V1()
    }
    
    public func v2() -> LoggerModuleProtocol {
        return V2()
    }
}

extension LoggerModule {
    private func getLoggerIdentity() -> String {
        return "CocoaLumberjack"
    }
}
