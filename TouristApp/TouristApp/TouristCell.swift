//
//  TouristCell.swift
//  TouristApp
//
//  Created by Carmen Z on 2022/10/1.
//

import UIKit

class TouristCell: UITableViewCell {
    
    @IBOutlet weak var imgPlace: UIImageView!
    
    @IBOutlet weak var lblPlace: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
