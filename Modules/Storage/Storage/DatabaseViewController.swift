//
//  DatabaseViewController.swift
//  Storage
//
//  Created by Kaushik Sahu on 31/05/21.
//

import Service

class DatabaseViewController: UITableViewController {

    private var model: [ConversationModel]
    private var viewModel: [ConversationViewModel]
    
    init() {
        model = createModel()
        viewModel = createViewModel(model: model)
        super.init(style: .plain)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Family Storage"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "default")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath)
        cell.textLabel?.text = item.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = model[indexPath.row]
        openStorage(pushIdentity: item.pushIdentity, product: item.product)
    }
    
    func openStorage(pushIdentity: PushIdentity, product: Product?) {
        let screen = StorageViewController(pushIdentity: pushIdentity, product: product)
        navigationController?.pushViewController(screen, animated: true)
    }
}

private struct ConversationModel {
    let pushIdentity: PushIdentity
    let product: Product?
}

private struct ConversationViewModel {
    let title: String
}

private func createModel() -> [ConversationModel] {
    return [
        ConversationModel(pushIdentity: PushIdentity(identifier: "APNS"), product: Product(identifier: "p1")),
        ConversationModel(pushIdentity: PushIdentity(identifier: "FIREBASE"), product: nil),
        ConversationModel(pushIdentity: PushIdentity(identifier: "NO_PUSH"), product: nil),
    ]
}

private func createViewModel(model: [ConversationModel]) -> [ConversationViewModel] {
    return model.map({ item in
        let debugDescription = "\(item.pushIdentity) - \((item.product?.debugDescription ?? "no product"))"
        return ConversationViewModel(title: debugDescription)
    })
}
