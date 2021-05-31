//
//  StorageViewController.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import UIKit
import Service
import Dependencies

class StorageViewController: UIViewController {

    let pushIdentity: PushIdentity
    let product: Product?
    
    init(pushIdentity: PushIdentity, product: Product?) {
        self.pushIdentity = pushIdentity
        self.product = product
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Storage"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Push", style: .plain, target: self, action: #selector(openPush))
        view.backgroundColor = UIColor.red
        showLabel()
    }
    
    private func showLabel() {
        // add a label with pushIdentity and product data
        let label = UILabel(frame: CGRect.zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "\(pushIdentity)\n\((product?.debugDescription ?? "no product"))"
        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 10)
        ]
        view.addSubview(label)
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func openPush() {
        let module = Dependencies.shared.pushModule
        let screen = module.registerPushNotification()
        navigationController?.pushViewController(screen, animated: true)
    }

}
