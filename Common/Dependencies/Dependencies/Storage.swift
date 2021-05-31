//
//  Storage.swift
//  Dependencies
//
//  Created by Kaushik Sahu on 31/05/21.
//  Copyright © 2021 Depop. All rights reserved.
//

import Foundation

public protocol StorageModuleProtocol {
    // Returns a new view controller used to show a list of conversations
    func getStoreLocation() -> String
    func saveData(data: String)
    func getData() -> String
}

extension Dependencies {
    // Now we can obtain a ChatModule
    public var storageModule: StorageModuleProtocol {
        return resolve(StorageModuleProtocol.self)!
    }
}
