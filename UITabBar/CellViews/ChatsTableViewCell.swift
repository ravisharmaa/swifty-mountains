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
        
        setUpProfileImageView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // setting up views
    
    func setUpProfileImageView() -> Void {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.topAnchor.constraint(equalTo:self.contentView.topAnchor, constant: 10).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 12).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        profileImageView.widthAnchor.constraint(equalTo: profileImageView.heightAnchor).isActive = true
    }
    
}
