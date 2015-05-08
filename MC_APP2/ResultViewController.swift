//
//  ResultViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 08/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit



class ResultViewController: UIViewController {

    
    var zonePicked : String?
    var group1: [Int]!
    var group2: [Int]!
    
    @IBOutlet var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var G1 = group1.reduce(0,+)
        var G2 = group2.reduce(0,+)
        
        if G1 >= G2 {
            ResultLabel.text = "GROUP 1 IS THE WINNER"
            
            
        } else {
            ResultLabel.text = "GROUP 2 IS THE WINNER"
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
