//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Mauricio Casillas on 05/08/23.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    @IBOutlet var menuImage: UIImageView!
    @IBOutlet var menuOptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
