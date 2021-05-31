//
//  PushViewController.swift
//  Push
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies

class PushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Push"
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
        showLabel()
        showGetPushButton()
        showSyncTokenButton()
    }
    
    private func showLabel() {
        // add a label with pushIdentity data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor.yellow
        label.text = "Push : \(Dependencies.shared.pushModule.pushService())"
        label.font = UIFont.systemFont(ofSize: 30)
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
    }
    
    private func showSyncTokenButton() {
        // add a button
        let btn: UIButton = UIButton(frame: CGRect(x: 130, y: 400, width: 150, height: 50))
        btn.backgroundColor = .orange
        btn.setTitle("Sync token", for: .normal)
        btn.addTarget(self, action: #selector(saveToken), for: .touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    private func showGetPushButton() {
        // add a button
        let btn: UIButton = UIButton(frame: CGRect(x: 130, y: 500, width: 150, height: 50))
        btn.backgroundColor = .orange
        btn.setTitle("Get Push", for: .normal)
        btn.addTarget(self, action: #selector(getPush), for: .touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }

    @objc private func getPush() {
        let pushData = "ABCD"
        getPushNotification(data: pushData)
    }
    
    @objc private func saveToken() {
        let token = "123456789"
        saveToStorage(data: token)
    }
    
    @objc func saveToStorage(data: String) {
        let module = Dependencies.shared.storageModule
        module.saveData(data: data)
    }
    
    @objc func getPushNotification(data: String) {
        let module = Dependencies.shared.pushModule
        module.pushNotificationReceived()
    }

}
