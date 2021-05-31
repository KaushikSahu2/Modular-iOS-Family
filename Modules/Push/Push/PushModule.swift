//
//  PushModule.swift
//  Push
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies

public class PushModule: PushModuleProtocol {

    public init() {}
    
    public func pushService() -> String {
        print("[Push] : Fetching Push service = <\(getPushIdentity())>")
        return getPushIdentity()
    }
    
    public func registerPushNotification() {
        let deviceToken = "1234567890"
        print("[Push] : registering Device for push notification to <\(getPushIdentity())>")
        if Dependencies.shared.storageModule.getData() != deviceToken {
            Dependencies.shared.storageModule.saveData(data: deviceToken)
        }
    }
    
    public func pushNotificationReceived() {
        let samplePushData = "ABCD"
        print("[Push] : Push notification received from <\(getPushIdentity())>")
        Dependencies.shared.storageModule.saveData(data: samplePushData)
    }
}

extension PushModule {
    private func getPushIdentity() -> String {
        return "FIREBASE"
    }
}
