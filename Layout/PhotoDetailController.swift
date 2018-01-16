//
//  PhotoDetailController.swift
//  Layout
//
//  Created by IJke Botman on 16/01/2018.
//  Copyright © 2018 IJke Botman. All rights reserved.
//

import UIKit

class PhotoDetailController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var photo: Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photo = photo {
            imageView.image = UIImage(named: photo.imageName)
            usernameLabel.text = photo.username
            timeLabel.text = photo.timePosted
            commentLabel.text = photo.comment
        }
    }
    
}
