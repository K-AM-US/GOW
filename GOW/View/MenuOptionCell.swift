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
        
        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let bodyMetrics = UIFontMetrics(forTextStyle: .title1)
        menuOptionLabel.font = bodyMetrics.scaledFont(for: myFont!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
