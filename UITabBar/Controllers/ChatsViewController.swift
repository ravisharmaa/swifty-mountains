import UIKit


class ChatsViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    
    var names: [String] = ["John", "Ron","Mon","Son","Don","Von"]
    
    var details: [String] = ["Devloper", "Designer", "Manager","Employee","Some","Man"]
    
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
        
        cell.imageLabel.text = names[indexPath.row]
        
        if indexPath.row == 0 {
            cell.profileImageView.image = UIImage(named: "logo")
        }
        
        if indexPath.row == 1 {
            cell.profileImageView.image = UIImage(named: "harry_potter")
        } else {
            cell.profileImageView.image = UIImage(named: "logo")
        }
        
        cell.informationLabel.text = details[indexPath.row]
        
        return cell
        
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
