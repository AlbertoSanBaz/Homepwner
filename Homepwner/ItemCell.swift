//
//  ItemCell.swift
//  Homepwner
//
//  Created by Alberto Sánchez Bazán on 4/5/18.
//  Copyright © 2018 Alberto Sánchez Bazán. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumber: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.adjustsFontForContentSizeCategory = true
        serialNumber.adjustsFontForContentSizeCategory = true
        valueLabel.adjustsFontForContentSizeCategory = true 
    }
}
