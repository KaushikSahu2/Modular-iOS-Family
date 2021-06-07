//
//  AppDependencies.swift
//  App
//
//  Created by Kaushik Sahu on 17/05/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import UIKit
import Dependencies
import Storage
import Push
import Logger

func setUpDependencies() {
    // register dependencies here
    let dependencies = Dependencies.shared
    
    dependencies.register(StorageModuleProtocol.self) {
        return StorageModule()
    }
    
    dependencies.register(PushModuleProtocol.self) {
        return PushModule()
    }

    dependencies.register(LoggerModuleProtocol.self) {
        return LoggerModuleV2()
    }
}
 
