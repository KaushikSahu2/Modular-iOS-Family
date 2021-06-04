//
//  StorageModule.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies

public class StorageModule: StorageModuleProtocol {
    public init() {}
    
    public func getStoreLocation() -> String {
        print("[Storage] : Fetching store location = <\(getStorageIdentity())>")
        return getStorageIdentity()
    }

    public func saveData(data: String) {
        print("[Storage] : Saving data in <\(getStorageIdentity())>")
    }
    
    public func getData() -> String {
        let fetchedData = "123456780"
        print("[Storage] : Fethcing data from <\(getStorageIdentity())> = \(fetchedData)")
        return fetchedData
    }
    
    public func removeData(data: String) {
        print("[Storage] : Removing data in <\(getStorageIdentity())>")
    }
}

extension StorageModule {
    private func getStorageIdentity() -> String {
        return "SQLITE DB"
    }
}
