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
        
        menuOptionLabel.font = UIFont().customFont(customFont: "CGF Locust Resistance", customSize: 17, customStyle: .title1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
