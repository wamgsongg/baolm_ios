//
//  CoreDataManager.swift
//  11
//
//  Created by wangsong on 2019/12/6.
//  Copyright © 2019 wangsong. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CoreDataManager: NSObject {
    
    // 单例
    static let shared = CoreDataManager()
    
    // 拿到AppDelegate中创建好了的NSManagedObjectContext
    lazy var context: NSManagedObjectContext = {
        let context = ((UIApplication.shared.delegate) as! AppDelegate).context
        return context
    }()
    
    // 更新数据
    private func saveContext() {
        do {
            try context.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
  
    // 增加数据
    func saveOrderInfWith(order_inf_id:Int32,shop_name:String,recipe_name:String,recipe_price:Double,recipe_number:Int32,order_id:Int32) {
        let orderinf = NSEntityDescription.insertNewObject(forEntityName: "OrderInf", into: context) as! OrderInf
        orderinf.order_inf_id=order_inf_id
        orderinf.shop_name=shop_name
        orderinf.recipe_name=recipe_name
        orderinf.recipe_price=recipe_price
        orderinf.recipe_number=recipe_number
        orderinf.order_id=order_id
        saveContext()
    }
    func saveOrderWith(order_id: Int32,shop_name: String,shop_image: String,order_time: String,order_status: String,order_inf: String,order_price: Double) {
        let order = NSEntityDescription.insertNewObject(forEntityName: "Order", into: context) as! Order
        order.order_id=order_id
        order.shop_name=shop_name
        order.shop_image=shop_image
        order.order_time=order_time
        order.order_status=order_status
        order.order_inf=order_inf
        order.order_price=order_price
        saveContext()
    }
    
    
    
    func saveRecipeWith(recipe_id: Int32,shop_name: String,recipe_name: String,monthly_sale: String,recipe_notice: String,recipe_image: String,recipe_remain: Int32,recipe_discount: Double,recipe_status: String,recipe_price: Double){
        let recipe = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: context) as! Recipe
        recipe.recipe_id=recipe_id
        recipe.shop_name=shop_name
        recipe.recipe_name=recipe_name
        recipe.sale=monthly_sale
        recipe.recipe_notice=recipe_notice
        recipe.recipe_image=recipe_image
        recipe.recipe_remain=recipe_remain
        recipe.recipe_discount=recipe_discount
        recipe.recipe_status=recipe_status
        recipe.recipe_price=recipe_price
        saveContext()
        
    }
    func saveShopWith(shop_id: Int32,shop_name: String,shop_pwd: String,shop_address: String,shop_tel: String,shop_core: String,shop_notice: String,shop_trademark: String,shop_status: String){
        let shop = NSEntityDescription.insertNewObject(forEntityName: "Shop", into: context) as! Shop
        shop.shop_id=shop_id
        shop.shop_name=shop_name
        shop.shop_pwd=shop_pwd
        shop.shop_address=shop_address
        shop.shop_tel=shop_tel
        shop.shop_core=shop_core
        shop.shop_notice=shop_notice
        shop.shop_trademark=shop_trademark
        shop.shop_status=shop_status
        saveContext()
        
        
    }

    // 根据姓名获取数据
    func getOrderInfWith(shopname:String) -> [OrderInf] {
        let fetchRequest: NSFetchRequest = OrderInf.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "shop_name == %@", shopname)
        do {
            let result: [OrderInf] = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    
    func getRecipeWith(shop_name: String) -> [Recipe] {
        let fetchRequest: NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "shop_name == %@", shop_name)
        do {
            let result: [Recipe] = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    func getShopWith(name:String) -> Shop {
        let fetchRequest: NSFetchRequest = Shop.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "shop_name == %@", name)
        do {
            let result: Shop = try context.fetch(fetchRequest)[0]
            return result
        } catch {
            fatalError();
        }
    }
    
    // 获取所有数据
    func getAllOrderInf() -> [OrderInf] {
        let fetchRequest: NSFetchRequest = OrderInf.fetchRequest()
        do {
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    func getAllShop() -> [Shop] {
        let fetchRequest: NSFetchRequest = Shop.fetchRequest()
        do {
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    func getAllRecipe() -> [Recipe] {
        let fetchRequest: NSFetchRequest = Recipe.fetchRequest()
        do {
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    func getAllOrder() -> [Order] {
        let fetchRequest: NSFetchRequest = Order.fetchRequest()
        do {
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            fatalError();
        }
    }
    
    // 根据姓名修改数据
//    func changePersonWith(name: String, newName: String, newAge: Int16) {
//        let fetchRequest: NSFetchRequest = Person.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
//        do {
//            let result = try context.fetch(fetchRequest)
//            for person in result {
//                person.name = newName
//                person.age = newAge
//            }
//        } catch {
//            fatalError();
//        }
//        saveContext()
//    }
    
    // 根据姓名删除数据
//    func deleteWith(name: String) {
//        let fetchRequest: NSFetchRequest = Person.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
//        do {
//            let result = try context.fetch(fetchRequest)
//            for person in result {
//                context.delete(person)
//            }
//        } catch {
//            fatalError();
//        }
//        saveContext()
//    }
    
    // 删除所有数据
    func deleteAllShop() {
        let result = getAllShop()
        for shop in result {
            context.delete(shop)
        }
        saveContext()
    }
    func deleteAllRecipe() {
        let result = getAllRecipe()
        for recipe in result {
            context.delete(recipe)
        }
        saveContext()
    }
    func deleteAllOrder() {
           let result = getAllOrder()
           for recipe in result {
               context.delete(recipe)
           }
           saveContext()
       }
    func deleteAllOrderInf() {
             let result = getAllOrderInf()
             for recipe in result {
                 context.delete(recipe)
             }
             saveContext()
         }
}
