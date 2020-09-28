//
//  MyCustomCell.swift
//  tableViewDeveloper
//
//  Created by Grazi Berti on 28/09/20.
//

import UIKit

class MyCustomCell: UITableViewCell {

    
    @IBOutlet weak var imageDeveloper: UIImageView!
    
    @IBOutlet weak var nameDeveloper: UILabel!
    
    @IBOutlet weak var emailDeveloper: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        imageDeveloper!.roundedImage()
       
    }
    
    func setup(developer: Developer) {
        nameDeveloper.text = developer.name
        emailDeveloper.text = developer.email
        imageDeveloper.image = UIImage(named: developer.image)
        
        
    }
}
extension UIImageView {
    func roundedImage() {
        self.layer.cornerRadius = (self.frame.size.width) / 2;
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.white.cgColor
    }
}


