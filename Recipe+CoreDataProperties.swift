//
//  Recipe+CoreDataProperties.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }

    @NSManaged public var recipe_id: Int32
    @NSManaged public var shop_name: String?
    @NSManaged public var recipe_name: String?
    @NSManaged public var sale: String?
    @NSManaged public var recipe_notice: String?
    @NSManaged public var recipe_image: String?
    @NSManaged public var recipe_remain: Int32
    @NSManaged public var recipe_discount: Double
    @NSManaged public var recipe_status: String?
    @NSManaged public var recipe_price: Double

}
