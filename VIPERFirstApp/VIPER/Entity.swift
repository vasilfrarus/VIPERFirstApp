//
//  Entity.swift
//  VIPERFirstApp
//
//  Created by Vasiliy Fedotov on 28/01/2018.
//  Copyright © 2018 Vasiliy Fedotov. All rights reserved.
//

import Foundation
import RealmSwift

class ItemEntity : Object {
    @objc dynamic var itemName: String = ""
    @objc dynamic var itemDate: Date? = nil
}
