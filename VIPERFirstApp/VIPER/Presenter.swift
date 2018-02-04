//
//  Presenter.swift
//  VIPERFirstApp
//
//  Created by Vasiliy Fedotov on 28/01/2018.
//  Copyright © 2018 Vasiliy Fedotov. All rights reserved.
//

import Foundation

class Presenter {
    
    func addNewItemEntry() {
        view.showAddItemInterface()
    }
    
    func prepareItemsForShowing(_ itemList: [Entity]) {
        if itemList.count == 0 {
            view.showNoContent()
        } else {
            view.show
        }
    }
    
}
