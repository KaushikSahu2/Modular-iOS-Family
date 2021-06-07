//
//  V2.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class V2: LoggerModuleProtocol {

    public init() {}
    
    public func loggerService() -> String {
        print("[Push] : Fetching Logger service V2 = <\(getLoggerIdentity())>")
        return getLoggerIdentity()
    }
    
    public func writeLogs(log: String) {
        print("[Logger - v2] : \(log)")
    }
    
    public func readLogs() {
        print("[Logger - v2] : reading logs from <\(getLoggerIdentity())>")
    }
    
    public func sendLogs() {
        print("[Logger - v2] : sending logs to server from <\(getLoggerIdentity())>")
    }
}

extension V2 {
    private func getLoggerIdentity() -> String {
        return "CocoaLumberjack"
    }
}
