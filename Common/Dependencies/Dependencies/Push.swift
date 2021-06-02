//
//  Push.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 31/05/21.
//  Copyright © 2021 Depop. All rights reserved.
//

import Foundation

public protocol PushModuleProtocol {
    func pushService() -> String
    func registerForPushNotification()
    func unregisterForPushNotification()
    func pushNotificationReceived()
}

extension Dependencies {
    public var pushModule: PushModuleProtocol {
        return resolve(PushModuleProtocol.self)!
    }
}
