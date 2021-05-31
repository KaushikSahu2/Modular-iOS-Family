//
//  Storage.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 31/05/21.
//  Copyright © 2021 Depop. All rights reserved.
//

import Foundation
import UIKit
import Service

public protocol StorageModuleProtocol {
    // Returns a new view controller used to show a list of conversations
    func saveData() -> UIViewController
    // Returns a new view controller used to chat with a pushIdentity about a product (optional)
    func messagesScreen(pushIdentity: PushIdentity, product: Product?) -> UIViewController
    // Returns a new object which can be used to send a message on the background. See ChatMessageSender for more info.
    func messageSender(to receiver: PushIdentity, about product: Product?) -> StorageMessageSender
}

// An object which can be used to send messages about a particular conversation.
public protocol StorageMessageSender {
    // Sends a new message with a body. The completion handler will be called upon completion. In case of success with a valid identifier for the new message created.
    func sendNewMessage(with body: String, completion: @escaping (_ messageId: String?) -> Void)
}

extension Dependencies {
    // Now we can obtain a ChatModule
    public var storageModule: StorageModuleProtocol {
        return resolve(StorageModuleProtocol.self)!
    }
}
