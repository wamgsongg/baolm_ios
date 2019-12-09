//
//  NewTableViewCell.swift
//  blm
//
//  Created by wangsong on 2019/12/5.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {
    
    let width:CGFloat = UIScreen.main.bounds.width
    var shopname:UILabel!
    var iconImv:UIImageView!
    var orderdate:UILabel!
    
    var orderinf:UILabel!
    var orderstatus:UILabel!
    var orderprice:UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           
           // 头像
           iconImv = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
           
           
           // 名字
           shopname = UILabel(frame: CGRect(x: 50, y: 10, width: width-180, height: 15))
           shopname.textColor = UIColor.black
           shopname.font = UIFont.boldSystemFont(ofSize: 15)
        
        orderstatus = UILabel(frame: CGRect(x: width-120, y: 18, width: 120, height: 30))
        orderstatus.textColor = UIColor.black
        orderstatus.font = UIFont.boldSystemFont(ofSize: 18)
       
        orderdate=UILabel(frame: CGRect(x: 50, y: 27, width: 150, height: 12))
        orderdate.textColor = UIColor.gray
         orderdate.font = UIFont.boldSystemFont(ofSize: 12)
        
        orderinf=UILabel(frame: CGRect(x: 50, y: 60, width: 150, height: 14))
        orderinf.textColor = UIColor.black
         orderinf.font = UIFont.boldSystemFont(ofSize: 14)
        orderprice=UILabel(frame: CGRect(x: width-50, y: 60, width: 50, height: 15))
        orderprice.textColor = UIColor.black
         orderprice.font = UIFont.boldSystemFont(ofSize: 15)
        
        
        
           contentView.addSubview(iconImv)
           contentView.addSubview(shopname)
        contentView.addSubview(orderdate)
        contentView.addSubview(orderstatus)
        contentView.addSubview(orderinf)
        
          
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
