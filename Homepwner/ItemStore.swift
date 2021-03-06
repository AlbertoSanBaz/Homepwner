//
//  ItemStore.swift
//  Homepwner
//
//  Created by Alberto Sánchez Bazán on 3/5/18.
//  Copyright © 2018 Alberto Sánchez Bazán. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
//    init() {
//        for _ in 0..<5{
//            createItem()
//        }
//    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        
        // Inser item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
    
}
