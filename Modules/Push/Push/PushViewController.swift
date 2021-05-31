//
//  PushViewController.swift
//  Push
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Dependencies
import Service

class PushViewController: UIViewController {

    let pushIdentity: PushIdentity
    init(pushIdentity: PushIdentity) {
        self.pushIdentity = pushIdentity
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Storage", style: .plain, target: self, action: #selector(openStorage))
        showLabel()
    }
    
    private func showLabel() {
        // add a label with pushIdentity data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor.yellow
        label.text = pushIdentity.debugDescription
        label.font = UIFont.systemFont(ofSize: 30)
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func openStorage() {
        let module = Dependencies.shared.storageModule
        let storageScreen = module.messagesScreen(pushIdentity: pushIdentity, product: nil)
        
        navigationController?.pushViewController(storageScreen, animated: true)
    }

}
