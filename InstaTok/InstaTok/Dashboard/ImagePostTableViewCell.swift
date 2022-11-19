//
//  ImagePostTableViewCell.swift
//  InstaTok
//
//  Created by Carmen Z on 2022/11/19.
//

import UIKit

class ImagePostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var caption: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var dateTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
