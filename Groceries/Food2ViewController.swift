//
//  FirstViewController.swift
//  Groceries
//
//  Created by Mitch Sigley on 10/5/18.
//  Copyright © 2018 Mitch Sigley. All rights reserved.
//

import UIKit

class Food2ViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var CountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        print("fridge viewloaded");
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        print("fridge reload data");
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let food = foodList2 {
            print("fridge return count");
            print(food.count);
            foodList2Num = food.count
            
            return food.count
            
            
        }else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let food = foodList2 {
            cell.textLabel?.text = food[indexPath.row]
            print("0food added");
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            foodList2?.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
}

