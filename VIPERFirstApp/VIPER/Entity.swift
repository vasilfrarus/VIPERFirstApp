//
//  Entity.swift
//  VIPERFirstApp
//
//  Created by Vasiliy Fedotov on 28/01/2018.
//  Copyright © 2018 Vasiliy Fedotov. All rights reserved.
//

import Foundation
import RealmSwift

class RealmEntity : Object {
    
    override static func primaryKey() -> String? {
        return "itemIdentifier"
    }
    
    @objc dynamic var itemIdentifier: String = UUID().uuidString
    @objc dynamic var itemName: String = ""
    @objc dynamic var itemDate: Date? = nil
}

struct EntityObject {
    let itemIdentifier: String
    let itemName: String
    let itemDate: Date
    
    init(name: String, date: Date, identifier: String) {
        itemName = name
        itemDate = date
        itemIdentifier = identifier
    }
}

