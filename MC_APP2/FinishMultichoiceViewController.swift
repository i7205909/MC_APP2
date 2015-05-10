//
//  FinishMultichoiceViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 08/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class FinishMultichoiceViewController: UIViewController {
    
    var zonePicked : String?
    var group1 = [Int]()
    var group2 = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destinationVC = segue.destinationViewController as? ZonesViewController {
            destinationVC.group1 = group1
            destinationVC.group2 = group2
        }
        
        if let destinationVC = segue.destinationViewController as? ResultViewController {
            destinationVC.group1 = group1
            destinationVC.group2 = group2
        }
        
        performSegueWithIdentifier(zonePicked, sender: self)
    }
    
    override func performSegueWithIdentifier(identifier: String?, sender: AnyObject?) {
        
    }

}
