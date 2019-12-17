import UIKit

class ChatsTableViewCell: UITableViewCell {

    //MARK:- Defining views
    
    var profileImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    var imageLabel: UILabel = {
        let text = UILabel()
        
        return text
    }()
    
    var informationLabel: UILabel = {
        let informationLabel = UILabel()
        
        return informationLabel
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(profileImageView)
        
        addSubview(imageLabel)
        
        addSubview(informationLabel)
        
        setUpProfileImageView()
        
        setUpImageLabel()
        
        setUpInformationLabel()
        
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
    
    func setUpImageLabel() -> Void {
        
        imageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        imageLabel.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor, constant: 20).isActive = true
    }
    
    func setUpInformationLabel() -> Void {
        informationLabel.translatesAutoresizingMaskIntoConstraints = false
        //informationLabel.topAnchor.constraint(equalTo: imageLabel.topAnchor, constant: 40).isActive = true
        //informationLabel.leadingAnchor.constraint(equalTo: imageLabel.leadingAnchor).isActive = true
        
        // this method is painful works the same way though
        NSLayoutConstraint.activate([
            NSLayoutConstraint.init(item: informationLabel, attribute: .top, relatedBy: .equal, toItem: imageLabel, attribute: .top, multiplier: 1.0, constant: 40.00),
            NSLayoutConstraint.init(item: informationLabel, attribute: .leading, relatedBy: .equal, toItem: imageLabel, attribute: .leading, multiplier: 1.0, constant: 1.0)
        ])
    }
    
}
