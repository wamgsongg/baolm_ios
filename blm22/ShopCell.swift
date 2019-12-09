//
//  NewTableViewCell.swift
//  blm
//
//  Created by wangsong on 2019/12/5.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class ShopCell: UITableViewCell {
    
    let width:CGFloat = UIScreen.main.bounds.width
    var shopname:UILabel!
    var iconImv:UIImageView!
    var shopcore:UILabel!
    var sale:UILabel!
    var shop_sale:UILabel!
    var shopstatus:UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           
           // 头像
           iconImv = UIImageView(frame: CGRect(x: 15, y: 15, width: 60, height: 60))
           
           
           // 名字
           shopname = UILabel(frame: CGRect(x: 90, y: 18, width: width-180, height: 18))
           shopname.textColor = UIColor.black
           shopname.font = UIFont.boldSystemFont(ofSize: 18)
        
        shopstatus = UILabel(frame: CGRect(x: width-90, y: 18, width: 90, height: 40))
        shopstatus.textColor = UIColor.red
        shopstatus.font = UIFont.boldSystemFont(ofSize: 24)
           
            shopcore = UILabel(frame: CGRect(x: 90, y: 48, width: 30, height: 13))
            shopcore.textColor = UIColor.gray
            shopcore.font = UIFont.systemFont(ofSize: 13)
            shopcore.textAlignment = .left
          
           sale = UILabel(frame: CGRect(x: 120, y: 48, width: 40, height: 13))
           sale.textColor = UIColor.gray
           sale.font = UIFont.systemFont(ofSize: 13)
           sale.textAlignment = .left
        shop_sale = UILabel(frame: CGRect(x: 160, y: 48, width: 40, height: 13))
        shop_sale.textColor = UIColor.gray
        shop_sale.font = UIFont.systemFont(ofSize: 13)
        shop_sale.textAlignment = .left
        
           contentView.addSubview(iconImv)
           contentView.addSubview(shopname)
            contentView.addSubview(shopcore)
        contentView.addSubview(sale)
        contentView.addSubview(shop_sale)
        contentView.addSubview(shopstatus)
        
          
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
