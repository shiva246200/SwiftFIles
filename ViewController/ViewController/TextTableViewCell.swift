//
//  TextTableViewCell.swift
//  ViewController
//
//  Created by ShivaT on 28/06/24.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    @IBOutlet weak var mymg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
              mymg.layer.cornerRadius = mymg.frame.size.width/1.5
       // mymg.layer.cornerRadius = mymg.frame.size.height/1.75
        mymg.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
