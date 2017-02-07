//
//  CategoryExtensions.swift
//  RodKom
//
//  Created by Administrator on 06.02.17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation

/* init(entity: NSManagedObject) */
import CoreData
/* Framework for extension for undeclared type IdentifiableType */
import RxDataSources
/* Framework for extension for undeclared type Persistable */
import RxCoreData
/* Framework for extension for undeclared types Decodable and JSON  */
import Gloss


func == (lhs: Category, rhs: Category) -> Bool {
    return lhs.id == rhs.id
}

// Returns `true` if `lhs` is equal to `rhs`.
extension Category : Equatable { }


extension Category : IdentifiableType {
    typealias Identity = String
    
    var identity: Identity { return id }
}

extension Category : Persistable {
    
    static var entityName: String {
        return "Category"
    }
    
    static var primaryAttributeName: String {
        return "id"
    }
    
    init(entity: NSManagedObject){
        id = entity.valueForKey("id") as! String
        name = entity.valueForKey("name") as! String
        //        type = entity.valueForKey("type") as! NSNumber
        //        imageId = entity.valueForKey("imageId") as! NSNumber
    }
    
    func update(entity: NSManagedObject) {
        entity.setValue(id, forKey: "id")
        entity.setValue(name, forKey: "name")
        //        entity.setValue(type, forKey: "type")
        //        entity.setValue(imageId, forKey: "imageId")
        
        do {
            try entity.managedObjectContext?.save()
        } catch let e {
            print(e)
        }
    }
}

extension Category : Decodable {
    
    init?(json: JSON) {
        self.id = ("id" <~~ json)!
        self.name = ("name" <~~ json)!
        //        self.type = ("type" <~~ json)!
        //        self.imageId = ("imageId" <~~ json)!
    }
    
}
