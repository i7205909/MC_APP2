//
//  var info : String?     var info : String? ZonesViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 01/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class ZonesViewController: UIViewController {

    
    var zonePicked : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zoneOne(sender: AnyObject) {
        zonePicked = "zoneOne"
    }

    @IBAction func zoneTwo(sender: AnyObject) {
        zonePicked = "zoneTwo"
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destinationVC = segue.destinationViewController as? TestViewController {
            destinationVC.zonePicked = zonePicked
        }
        
        performSegueWithIdentifier(zonePicked, sender: self)
    }
    
    override func performSegueWithIdentifier(identifier: String?, sender: AnyObject?) {

    }
    

}
