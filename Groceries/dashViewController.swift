//
//  dash.swift
//  Groceries
//
//  Created by Mitch Sigley on 29/5/18.
//  Copyright © 2018 Mitch Sigley. All rights reserved.
//

import Foundation
import UIKit

class dashViewController:  UIViewController {
    
    
    @IBOutlet weak var pantryLabel: UILabel!
    @IBOutlet weak var fridgeLabel: UILabel!
    @IBOutlet weak var freezerLabel: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var pantryView: UIView!
    @IBOutlet weak var fridgeView: UIView!
    @IBOutlet weak var totalView: UIView!
    @IBOutlet weak var freezerView: UIView!
    @IBOutlet weak var leftoverView: UIView!
    @IBOutlet weak var message: UILabel!
    var totalNum = foodList3Num + foodList2Num + foodListNum

    
      override func viewDidLoad() {
        print("dash viewloaded");
        pantryLabel.text = String(foodListNum);
        fridgeLabel.text = String(foodList2Num);
        freezerLabel.text = String(foodList3Num);
        
        total.text = String(totalNum);
        
        
        pantryView.layer.shadowOpacity = 0.7
        pantryView.layer.shadowOffset = CGSize(width: 1, height: 1)
        pantryView.layer.shadowRadius = 2.0
        pantryView.layer.shadowColor = UIColor.darkGray.cgColor
        
        fridgeView.layer.shadowOpacity = 0.7
        fridgeView.layer.shadowOffset = CGSize(width: 1, height: 1)
        fridgeView.layer.shadowRadius = 2.0
        fridgeView.layer.shadowColor = UIColor.darkGray.cgColor
        
        freezerView.layer.shadowOpacity = 0.7
        freezerView.layer.shadowOffset = CGSize(width: 1, height: 1)
        freezerView.layer.shadowRadius = 2.0
        freezerView.layer.shadowColor = UIColor.darkGray.cgColor
        
        totalView.layer.shadowOpacity = 0.7
        totalView.layer.shadowOffset = CGSize(width: 1, height: 1)
        totalView.layer.shadowRadius = 2.0
        totalView.layer.shadowColor = UIColor.darkGray.cgColor
        
        leftoverView.layer.shadowOpacity = 0.7
        leftoverView.layer.shadowOffset = CGSize(width: 1, height: 1)
        leftoverView.layer.shadowRadius = 2.0
        leftoverView.layer.shadowColor = UIColor.darkGray.cgColor
        
        switch foodListNum {
            
        case 11 ..< 999999:
            message.text = "Plenty of food in the kitchen"
        case (6 ..< 10):
            message.text = "You've got some food in the kitchen"
        case (1 ..< 5):
            message.text = "Only a little bit of food, time to go to the supermarket"
        case (0 ):
            message.text = "Looks like you're out of food! quick go shopping!"
            
        default:
            message.text = "Looks like you're out of food! quick go shopping!"
            
            
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        pantryLabel.text = String(foodListNum);
        fridgeLabel.text = String(foodList2Num);
        freezerLabel.text = String(foodList3Num);
        
        total.text = String(foodListNum + foodList2Num + foodList3Num)
        print("dash reload data");
       
        switch foodListNum {
            
        case 11 ..< 999999:
             message.text = "Plenty of food in the kitchen"
        case (6 ..< 10):
             message.text = "You've got some food in the kitchen"
        case (1 ..< 5):
            message.text = "Only a little bit of food, time to go to the supermarket"
        case (0 ):
            message.text = "Looks like you're out of food! quick go shopping!"

        default:
            message.text = "Looks like you're out of food! quick go shopping!"
            
            
        }
    }
    

}
