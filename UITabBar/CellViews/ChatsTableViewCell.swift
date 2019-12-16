import UIKit

class ChatsTableViewCell: UITableViewCell {

    //MARK:- Defining views
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let imageLabel: UILabel = {
        let text = UILabel()
        
        return text
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(profileImageView)
        addSubview(imageLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // setting up views
    
    func setUpProfileImageView() -> Void {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: <#T##NSLayoutXAxisAnchor#>, multiplier: <#T##CGFloat#>)
    }
    
}
