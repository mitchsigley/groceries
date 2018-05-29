//
//  Contstants.swift
//  Groceries
//
//  Created by Mitch Sigley on 10/5/18.
//  Copyright © 2018 Mitch Sigley. All rights reserved.
//

import Foundation
//PANTRY VAR
var foodList:[String]?
//FRIDGE VAR
var foodList2:[String]?
//FREEZER VAR
var foodList3:[String]?


func saveData(foodList:[String]) {
    UserDefaults.standard.set(foodList2, forKey: "foodList")
    print("pantry item saved");
}

func fetchdata() -> [String]? {
    if let food = UserDefaults.standard.array(forKey: "foodList") as? [String] {
        print("pantry item fetched");
        return food
    }
    else{
        print("pantry item fetched 0");
        return nil
    }
}
//FRIDGE

func saveData2(foodList2:[String]) {
    UserDefaults.standard.set(foodList2, forKey: "foodList2")
    print("fridge item saved");
}

func fetchdata2() -> [String]? {
    if let food = UserDefaults.standard.array(forKey: "foodList2") as? [String] {
        print("fridge item fetched");
        return food
    }
    else{
        print("fridge item fetched 0");
        return nil
    }
}
//FREEZER

func saveData3(foodList3:[String]) {
    UserDefaults.standard.set(foodList3, forKey: "foodList3")
    print("freezer item saved");
}

func fetchdata3() -> [String]? {
    if let food = UserDefaults.standard.array(forKey: "foodList3") as? [String] {
        print("freezer item fetched");
        return food
    }
    else{
        print("freezer item fetched 0");
        return nil
    }
}

