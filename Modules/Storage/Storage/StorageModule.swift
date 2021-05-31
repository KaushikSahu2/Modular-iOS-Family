//
//  StorageModule.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies
import Service

public class StorageModule: StorageModuleProtocol {
    public init() {}
    
    public func messageSender(to receiver: PushIdentity, about product: Product?) -> StorageMessageSender {
        // configure and return an object for sending a msg in the background
        return MessageSender()
    }
    
    public func saveData() -> UIViewController {
        // configure and return a view controller
        return DatabaseViewController()
    }
    
    public func messagesScreen(pushIdentity: PushIdentity, product: Product?) -> UIViewController {
        // configure and return a view controller
        return StorageViewController(pushIdentity: pushIdentity, product: product)
    }
}

private class MessageSender: StorageMessageSender {
    
    func sendNewMessage(with body: String, completion: @escaping (String?) -> Void) {
        // provide an implementation here
    }
}
