//
//  V2.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModuleV2: LoggerModule {
    
    public func sendLogs() {
        print("[Logger - v2] : sending logs to server using <\(getLoggerIdentity())>")
    }
}

extension LoggerModuleV2 {
    override func getLoggerIdentity() -> String {
        return "FSLog"
    }
}
