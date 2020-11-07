//
//  Product+CoreDataProperties.swift
//  Expirapp
//
//  Created by Henry Torrico Jimpol on 11/3/20.
//
//

import Foundation
import CoreData


extension Product {
    @NSManaged public var status: String
    var orderStatus: Status {
            set {
                status = newValue.rawValue
            }
            get {
                Status(rawValue: status) ?? .ok
            }
        }
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var name: String
    @NSManaged public var cant: Int16
    @NSManaged public var expireDate: String
    @NSManaged public var photo: String

}

extension Product : Identifiable {

}

enum Status: String {
    case ok = "Esta bien"
    case hurry = "Pronto a vencer"
    case outdate = "Vencido"
}
