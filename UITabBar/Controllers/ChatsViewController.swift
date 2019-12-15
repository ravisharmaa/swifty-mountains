import UIKit


class ChatsViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    
    var names: [String] = ["John", "Ron","Mon"]
    
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
        
        tableView.register(ChatsTableViewCell.self, forCellReuseIdentifier: "chatsCell")
        
    }
}


extension ChatsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatsCell", for: indexPath) as! ChatsTableViewCell
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
        
       
    }
    
    
}
