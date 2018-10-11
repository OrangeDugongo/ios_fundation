//
//  TableViewCell.swift
//  app-05
//
//  Created by mignoneraffaele on 28/09/2018.
//  Copyright © 2018 The melons salad. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbLocation: UILabel!
    @IBOutlet var lbType: UILabel!
    @IBOutlet var thumb: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
