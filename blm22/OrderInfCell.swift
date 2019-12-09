//
//  OrderInfCell.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class OrderInfCell: UITableViewCell {
let width:CGFloat = UIScreen.main.bounds.width
    var name:UILabel!
    var number:UILabel!
    var price:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        name=UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 20))
        name.textColor = UIColor.black
        name.font = UIFont.boldSystemFont(ofSize: 15)
        number=UILabel(frame: CGRect(x: 210, y: 10, width: 20, height: 20))
        number.textColor = UIColor.black
        number.font = UIFont.boldSystemFont(ofSize: 15)
        price=UILabel(frame: CGRect(x: width-40, y: 10, width: 40, height: 20))
        price.textColor = UIColor.black
        price.font = UIFont.boldSystemFont(ofSize: 15)
        
        
    }

    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
      
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
