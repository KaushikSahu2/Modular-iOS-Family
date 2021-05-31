//
//  PushModule.swift
//  Push
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies
import Service

public class PushModule: PushModuleProtocol {

    public init() {}
    
    public func registerPushNotification() -> UIViewController {
        let pushIdentity = PushIdentity(identifier: "APNS")
        return PushViewController(pushIdentity: pushIdentity)
    }
}
