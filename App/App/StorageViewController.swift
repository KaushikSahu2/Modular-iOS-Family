//
//  StorageViewController.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies

class StorageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Storage"
        view.backgroundColor = UIColor.red
        showLabel()
    }
    
    private func showLabel() {
        // add a label with pushIdentity and product data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "Storage : \(Dependencies.shared.storageModule.getStoreLocation())"
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
        testVersioning()
    }
    
    func testVersioning() {
        Dependencies.shared.loggerModule.writeLogs(log: "test")
        Dependencies.shared.loggerModule.sendLogs?()
    }
    
//    private func showGetPushButton() {
//        // add a button
//        let btn: UIButton = UIButton(frame: CGRect(x: 130, y: 400, width: 200, height: 50))
//        btn.backgroundColor = .orange
//        btn.setTitle("Get latest token", for: .normal)
//        btn.addTarget(self, action: #selector(getPush), for: .touchUpInside)
//        btn.tag = 1
//        self.view.addSubview(btn)
//    }

}
