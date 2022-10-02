//
//  CyrptoTableViewCell.swift
//  CyrptoCrazy
//
//  Created by Berkay Kuzu on 17.09.2022.
//

import UIKit

class CyrptoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var priceText: UILabel!
    @IBOutlet weak var currencyText: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
