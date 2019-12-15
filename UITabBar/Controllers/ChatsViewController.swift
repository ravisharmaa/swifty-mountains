import UIKit


class ChatsViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = "Chats"
        view.addSubview(tableView)
        setUpTableViewConstraints()
        
    }
    
    func setUpTableViewConstraints() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}


extension ChatsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .subtitle, reuseIdentifier: "reuseId")
    }
    
    
}
