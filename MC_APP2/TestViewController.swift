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

    @IBOutlet var Question1: UILabel!
    @IBOutlet var Question2: UILabel!
    @IBOutlet var Question3: UILabel!
    
    
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
        Question1.text = "What shape is the entrance to the cloisters?"
        Question2.text = "What is the arrangement of shapes in the arch of the cloisters?"
        Question3.text = "What are shapes cut out in the armoured glove?"
    }
    
    
    func setupZoneTwo() {
        Question1.text = "What is the shape on the points of the Cathedral roof during construction?"
        Question2.text = "What is the shape of the font?"
        Question3.text = "What is the shape of the freemason symbol given to Elias De Derham?"
    }
    
    
    
    func setupZoneThree() {
        Question1.text = "What is the shape of the shield painted on the ceiling?"
        Question2.text = "What shape is the arrangement of the Prisoners of Conscience Window?"
        Question3.text = "What shape is the Shrine Tomb of St Osmund?"
    }
    
    
    func setupZoneFour() {
        Question1.text = "What is the shape of the Chapter House?"
        Question2.text = "What is the shape of the fleur-de-lis found on all the cushions?"
        Question3.text = "What is the shape found on the pillow for Nicholas"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destinationVC = segue.destinationViewController as? MultichoiceViewController {
            destinationVC.zonePicked = zonePicked
        }
        
        performSegueWithIdentifier(zonePicked, sender: self)
    }
    
    override func performSegueWithIdentifier(identifier: String?, sender: AnyObject?) {
        
    }
    
    

    
    
    
}




