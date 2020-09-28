//
//  MyCustomCell.swift
//  tableViewDeveloper
//
//  Created by Grazi Berti on 28/09/20.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String) {
        Label.text = title
    }
}
