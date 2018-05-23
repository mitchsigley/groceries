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

var foodList2:[String]?

func saveData2(foodList2:[String]) {
    UserDefaults.standard.set(foodList2, forKey: "foodList2")
}

func fetchdata2() -> [String]? {
    if let food2 = UserDefaults.standard.array(forKey: "foodList2") as? [String] {
        return food2
    }
    else{
        return nil
    }
}
