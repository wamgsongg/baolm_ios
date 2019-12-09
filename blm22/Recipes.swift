//
//  Recipes.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//

import UIKit

class Recipes: UITableViewController {
    var message: String?
  
     var  isEnlarge = false
         
         /// 下拉操作下方talbeView 是否刷新
         var isRefreshOfdownPull = false
         
         /// 当前选中的分页视图下标
         var selectIndex = 0



    @IBOutlet weak var navigation: UINavigationItem!
    lazy var segView:CenterSegmentView = {
                let nameArray = ["点菜","商家"]
                let vc1 = FirstViewController()
                vc1.set(name:(message ?? nil)!)
                let vc2 = SecondViewController()
                vc2.set(name:(message ?? nil)!)
//                let vc3 = ThirdViewController()
//                let vc4 = FirstViewController()
//                let vc5 = SecondViewController()
                
                let controollers = [vc1,vc2]
                
                let view = CenterSegmentView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height), controllers: controollers, titleArray: nameArray, selectIndex: self.selectIndex, lineHeight: 2)
                return view
            }()

       override func viewDidLoad() {
           super.viewDidLoad()
           navigation.title=message
        
        
           self.view.addSubview(self.segView)
          // print(message ?? 00)

           // Do any additional setup after loading the view.
       }
       
       override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }


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
