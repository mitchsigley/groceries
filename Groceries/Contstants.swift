//
//  Contstants.swift
//  Groceries
//
//  Created by Mitch Sigley on 10/5/18.
//  Copyright © 2018 Mitch Sigley. All rights reserved.
//

import Foundation

var foodList:[String]?

func saveData(foodList:[String]) {
    UserDefaults.standard.set(foodList, forKey: "foodList")
}

func fetchdata() -> [String]? {
    if let food = UserDefaults.standard.array(forKey: "foodList") as? [String] {
        return food
    }
    else{
        return nil
    }
}
