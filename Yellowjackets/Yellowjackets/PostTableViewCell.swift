//
//  PostTableViewCell.swift
//  Yellowjackets
//
//  Copyright © 2020 Karla Osorno. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!

    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with model: Post){
        self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.usernameLabel.text = model.username
        self.postImageView.image = UIImage(named: model.postImageName)
    }
    
}
