//
//  TableViewCell.swift
//  healthappSTORYBOARD
//
//  Created by David Baszucki on 3/15/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel01: UILabel!
    @IBOutlet weak var textLabel02: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
