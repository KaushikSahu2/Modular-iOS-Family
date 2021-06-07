//
//  LoggerModule.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModule: LoggerModuleProtocol {

    public init() {}
    
    public func loggerService() -> String {
        print("[Push] : Fetching Logger service = <\(getLoggerIdentity())>")
        return getLoggerIdentity()
    }
    
    public func writeLogs(log: String) {
        print("[Logger] : \(log)")
    }
    
    public func readLogs() {
        print("[Logger] : reading logs from <\(getLoggerIdentity())>")
    }
}

extension LoggerModule {
    @objc func getLoggerIdentity() -> String {
        return "CocoaLumberjack"
    }
}
