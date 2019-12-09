//
//  Shops.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class Shops: UITableViewController {
    var dataArray: [Shop] = [Shop]()
       let dataCellID = "dataCellID"
       

    override func viewDidLoad() {
        super.viewDidLoad()
        let tableview=UITableView(frame: view.bounds,style: .grouped)
        tableview.backgroundColor=UIColor.white
        view.addSubview(tableview)
        tableview.dataSource=self
        tableview.delegate=self
        CoreDataManager.shared.deleteAllShop()
        CoreDataManager.shared.deleteAllRecipe()
        CoreDataManager.shared.deleteAllOrder()
        CoreDataManager.shared.deleteAllOrderInf()
        
        CoreDataManager.shared.saveShopWith(shop_id: 1,shop_name: "港式烧腊",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "港式烧腊",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 2,shop_name: "铁板·卤肉·三杯鸡",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019007",shop_core: "5.0",shop_notice: "新品上市",shop_trademark: "铁板·卤肉·三杯鸡",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 3,shop_name: "考仕茂韩国料理",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "考仕茂韩国料理",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 4,shop_name: "可鱼可饭",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "可鱼可饭",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 5,shop_name: "土耳其烤肉饭",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "土耳其烤肉饭",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 6,shop_name: "江南小吃",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "江南小吃",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 7,shop_name: "老杭州面馆",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "老杭州面馆",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 8,shop_name: "涂鹅",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "涂鹅",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 9,shop_name: "申游子·老鸭粉丝馆",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "申游子·老鸭粉丝馆",shop_status: "在线")
        CoreDataManager.shared.saveShopWith(shop_id: 10,shop_name: "巴比馒头",shop_pwd: "123456",shop_address: "北秀生活广场",shop_tel: "17342019006",shop_core: "5.0",shop_notice: "请注意!!",shop_trademark: "巴比馒头",shop_status: "在线")
        
        
        CoreDataManager.shared.saveRecipeWith(recipe_id: 1, shop_name:"港式烧腊" , recipe_name:"脆皮烧鸭饭", monthly_sale: "0", recipe_notice: "脆皮烧鸭饭好吃", recipe_image: "脆皮烧鸭饭", recipe_remain: 10, recipe_discount: 1, recipe_status: "正常",recipe_price:15)
        CoreDataManager.shared.saveRecipeWith(recipe_id: 2, shop_name: "港式烧腊", recipe_name: "蜜汁叉烧饭", monthly_sale: "0", recipe_notice: "蜜汁叉烧饭好吃", recipe_image: "蜜汁叉烧饭", recipe_remain: 10, recipe_discount: 1, recipe_status: "正常",recipe_price:18)
        CoreDataManager.shared.saveRecipeWith(recipe_id: 3, shop_name: "港式烧腊", recipe_name: "香煎鸡排饭", monthly_sale: "0", recipe_notice: "香煎鸡排饭好吃", recipe_image: "香煎鸡排饭", recipe_remain: 10, recipe_discount: 1, recipe_status: "正常",recipe_price:14)
        CoreDataManager.shared.saveRecipeWith(recipe_id: 4, shop_name: "港式烧腊", recipe_name: "烧汁猪扒", monthly_sale: "0", recipe_notice: "烧汁猪扒好吃", recipe_image: "烧汁猪扒饭", recipe_remain: 10, recipe_discount: 1, recipe_status: "正常",recipe_price:15)
        
        
        
        CoreDataManager.shared.saveRecipeWith(recipe_id: 5, shop_name:"铁板·卤肉·三杯鸡", recipe_name: "三杯鸡", monthly_sale: "0", recipe_notice: "三杯鸡好吃", recipe_image: "铁板·卤肉·三杯鸡", recipe_remain: 10, recipe_discount: 1, recipe_status: "正常",recipe_price:17)
        CoreDataManager.shared.saveOrderWith(order_id: 1,shop_name: "港式烧腊",shop_image: "港式烧腊",order_time: "2019-12-03 11:23:34",order_status: "已完成",order_inf: "脆皮烧鸭饭",order_price: 15)
    CoreDataManager.shared.saveOrderInfWith(order_inf_id:1,shop_name:"港式烧腊",recipe_name:"脆皮烧鸭饭",recipe_price:15,recipe_number:1,order_id:1)
        
        CoreDataManager.shared.saveOrderWith(order_id: 2,shop_name: "铁板·卤肉·三杯鸡",shop_image: "铁板·卤肉·三杯鸡",order_time: "2019-12-05 11:47:21",order_status: "已完成",order_inf: "三杯鸡",order_price: 15)
        CoreDataManager.shared.saveOrderInfWith(order_inf_id:2,shop_name:"铁板·卤肉·三杯鸡",recipe_name:"三杯鸡",recipe_price:17,recipe_number:1,order_id:2)
            
        
        dataArray=CoreDataManager.shared.getAllShop()
        tableview.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cellid = "testCellID"
     var cell:ShopCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? ShopCell
         if cell == nil{
             cell = ShopCell(style: .subtitle, reuseIdentifier: cellid)
         }
     
     let dict = dataArray[indexPath.row]
        let path = Bundle.main.path(forResource: dict.shop_trademark, ofType: "jpg")
     let newImage = UIImage(contentsOfFile: path!)
     cell?.iconImv.image = newImage
    // cell?.iconImv.image = UIImage(named: dict["shop_trademark"]!)
        cell?.shopname.text = dict.shop_name
        cell?.shopcore.text = dict.shop_core
     cell?.sale.text="月售量"
     cell?.shop_sale.text="0"
        cell?.shopstatus.text=dict.shop_status
     
     return cell!
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 90.0
            }
            // 选中cell后执行此方法
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print(indexPath.row)
                let dict = dataArray[indexPath.row]
                print(dict.shop_id)
                let message =  dict.shop_name
            print(message ?? 00)
            
                //withIdentifier的值是在storyboard中创建的segue的Identifier值，需要在storyboard中设置
            self.performSegue(withIdentifier: "shoptorecipe", sender: message)
            print("flag2")
    //        let dict = dataSource[indexPath.row]
    //        let destination = RecipesTableViewController()
    //        destination.message = dict["shop_name"]
    //       self.present(destination, animated: true, completion: nil)
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        //判断是通过哪个segue进行的跳转，然后处理传值
        if segue.identifier == "shoptorecipe" {
            let controller = segue.destination as! Recipes
            
            controller.message = (sender as? String)!
         
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
        
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
