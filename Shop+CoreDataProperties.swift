//
//  Shop+CoreDataProperties.swift
//  blm22
//
//  Created by wangsong on 2019/12/7.
//  Copyright © 2019 wangsong. All rights reserved.
//
//

import Foundation
import CoreData


extension Shop {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Shop> {
        return NSFetchRequest<Shop>(entityName: "Shop")
    }

    @NSManaged public var shop_id: Int32
    @NSManaged public var shop_name: String?
    @NSManaged public var shop_pwd: String?
    @NSManaged public var shop_address: String?
    @NSManaged public var shop_tel: String?
    @NSManaged public var shop_core: String?
    @NSManaged public var shop_notice: String?
    @NSManaged public var shop_trademark: String?
    @NSManaged public var shop_status: String?

}
