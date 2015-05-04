//
//  TestViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 01/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var zonePicked : String?

    @IBOutlet var something: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if zonePicked == "zoneOne"{
            setupZoneOne()
        }
        
        if zonePicked == "zoneTwo"{
           setupZoneTwo()
        }
        
        if zonePicked == "zoneThree"{
            setupZoneThree()
        }
        
        if zonePicked == "zoneFour"{
            setupZoneFour()
        }
        
    }
    
    
    
    func setupZoneOne() {
        something.text = "the user picked zone ONE"
        
        
    }
    
    
    func setupZoneTwo() {
        something.text = "the user picked zone TWO"
    }
    
    
    
    func setupZoneThree() {
        something.text = "the user picked zone THREE"
    }
    
    
    
    func setupZoneFour() {
        something.text = "the user picked zone FOUR"
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
