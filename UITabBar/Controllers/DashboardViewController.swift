import UIKit

class DashboardViewController: UITabBarController {

    
    //MARK:- Setting up view Controllers
    
    
    let chatsViewController: UIViewController = {
       
        let chatsView = UINavigationController(rootViewController: ChatsViewController())
        return chatsView
    
    }()
    
    
    let contactsViewController: UIViewController = {
        
        let contactsView = UINavigationController(rootViewController: ContactsViewController())
        return contactsView
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() -> Void {
        
        chatsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        contactsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
        self.viewControllers = [chatsViewController, contactsViewController]
    }
    
    


}
