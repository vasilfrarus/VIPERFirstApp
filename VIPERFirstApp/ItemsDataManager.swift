//
//  ItemsDataManager.swift
//  VIPERFirstApp
//
//  Created by Vasiliy Fedotov on 04/02/2018.
//  Copyright © 2018 Vasiliy Fedotov. All rights reserved.
//

import Foundation
import RealmSwift

class ItemsDataManager {
    static shared = ItemsDataManager()
    
    func addItemToDB(_ item: ItemObject) {
        
        let realmItem = RealmEntity()
        realmItem.itemIdentifier = item.itemIdentifier
        realmItem.itemName = item.itemName
        realmItem.itemDate = item.itemDate
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(realmItem)
        }
        
    }
    
    func removeItemFromDB(withIdentifier id: String) {
        let realm = try! Realm()

        if let itemToDelete = realm.object(ofType: RealmEntity.self, forPrimaryKey: id) {
            realm.write {
                realm.delete(itemToDelete)
            }
        }
    }
    
    func getItems(withDateBetween first: Date?, and second: Date?) {
        if let first = first, let second = second {
            let predicate = NSPredicate(format: "itemDate >= \(first) AND itemDate <= \(second)")
            return Realm()!.objects(RealmEntity.self).filter(predicate)
        } else if let first = first {
            let predicate = NSPredicate(format: "itemDate >= \(first)")
            return Realm()!.objects(RealmEntity.self).filter(predicate)
        }  else if let second = second {
            let predicate = NSPredicate(format: "itemDate <= \(second)")
            return Realm()!.objects(RealmEntity.self).filter(predicate)
        }
        
        return Realm()!.objects(RealmEntity.self)
    }
    
}
