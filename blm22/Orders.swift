//
//  Orders.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class Orders: UITableViewController {
    var dataArray: [Order] = [Order]()
    let dataCellID = "dataCellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        let tableview=UITableView(frame: view.bounds,style: .insetGrouped)
        tableview.backgroundColor=UIColor.white
        view.addSubview(tableview)
        tableview.dataSource=self
        tableview.delegate=self
        dataArray=CoreDataManager.shared.getAllOrder()
        tableview.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cellid = "testCellID"
     var cell:OrderCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? OrderCell
         if cell == nil{
             cell = OrderCell(style: .subtitle, reuseIdentifier: cellid)
         }
     
     let dict = dataArray[indexPath.row]
        let path = Bundle.main.path(forResource: dict.shop_image, ofType: "jpg")
     let newImage = UIImage(contentsOfFile: path!)
     cell?.iconImv.image = newImage
    // cell?.iconImv.image = UIImage(named: dict["shop_trademark"]!)
        cell?.shopname.text = dict.shop_name
        cell?.orderstatus.text=dict.order_status
        cell?.orderprice.text="\(dict.order_price)"
 
        cell?.orderdate.text=dict.order_time
        cell?.orderinf.text=dict.order_inf
        
     
     return cell!
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 80.0
            }
            // 选中cell后执行此方法
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print(indexPath.row)
                let dict = dataArray[indexPath.row]
               
                let message =  dict
            print(message )
            
                //withIdentifier的值是在storyboard中创建的segue的Identifier值，需要在storyboard中设置
            self.performSegue(withIdentifier: "ordertoinf", sender: message)
            
    //        let dict = dataSource[indexPath.row]
    //        let destination = RecipesTableViewController()
    //        destination.message = dict["shop_name"]
    //       self.present(destination, animated: true, completion: nil)
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        //判断是通过哪个segue进行的跳转，然后处理传值
        if segue.identifier == "ordertoinf" {
            let controller = segue.destination as! OrderInfs
            
            controller.message = (sender as? Order)!
         
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
        
    }

    // MARK: - Table view data source
//
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
