//
//  NewTableViewCell.swift
//  blm
//
//  Created by wangsong on 2019/12/5.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    let width:CGFloat = UIScreen.main.bounds.width
    var shopname:UILabel!
    var iconImv:UIImageView!
    var recipe_price:UILabel!
    var sale:UILabel!
    var shop_sale:UILabel!
    var recipe_notice:UILabel!
    var add:UIButton!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
           
           // 头像
           iconImv = UIImageView(frame: CGRect(x: 15, y: 15, width: 60, height: 60))
           
           
           // 名字
           shopname = UILabel(frame: CGRect(x: 90, y: 18, width: width-180, height: 18))
           shopname.textColor = UIColor.black
           shopname.font = UIFont.boldSystemFont(ofSize: 18)
        
          
           sale = UILabel(frame: CGRect(x: 90, y: 48, width: 40, height: 13))
           sale.textColor = UIColor.gray
           sale.font = UIFont.systemFont(ofSize: 13)
           sale.textAlignment = .left
        shop_sale = UILabel(frame: CGRect(x: 140, y: 48, width: 40, height: 13))
        shop_sale.textColor = UIColor.gray
        shop_sale.font = UIFont.systemFont(ofSize: 13)
        shop_sale.textAlignment = .left
        
        recipe_notice = UILabel(frame: CGRect(x: 90, y: 65, width: width-150, height: 13))
        recipe_notice.textColor = UIColor.gray
        recipe_notice.font = UIFont.systemFont(ofSize: 13)
        recipe_notice.textAlignment = .left
        
        recipe_price = UILabel(frame: CGRect(x: 90, y: 80, width: 50, height: 24))
        recipe_price.textColor = UIColor.red
        recipe_price.font = UIFont.systemFont(ofSize: 24)
        recipe_price.textAlignment = .left
        add=UIButton(frame: CGRect(x: width-50, y: 80, width:  30, height: 30))
        add.backgroundColor=UIColor.yellow
        
        
        
           contentView.addSubview(iconImv)
           contentView.addSubview(shopname)
            contentView.addSubview(recipe_price)
        contentView.addSubview(sale)
        contentView.addSubview(shop_sale)
        contentView.addSubview(recipe_notice)
        
          contentView.addSubview(add)
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
