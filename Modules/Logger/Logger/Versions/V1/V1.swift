//
//  V1.swift
//  Logger
//
//  Created by Kaushik Sahu on 07/06/21.
//

import Foundation
import Dependencies

public class LoggerModuleV1: LoggerModule {
    
    public override func writeLogs(log: String) {
        print("[Logger - v1] : \(log)")
    }
}

extension LoggerModuleV1 {
    override func getLoggerIdentity() -> String {
        return "CocoaLumberjack"
    }
}
