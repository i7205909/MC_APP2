//
//  MultichoiceViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 07/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class MultichoiceViewController: UIViewController {
    
    
    var zonePicked : String?


  
    @IBOutlet var QuestionText: UILabel!
    @IBOutlet var answer1: UIButton!
    @IBOutlet var answer2: UIButton!
    @IBOutlet var answer3: UIButton!
    @IBOutlet var answer4: UIButton!
    @IBOutlet var result: UILabel!
    @IBOutlet var nextButton: UIButton!
    var questionNumber = 0
    
    
    var group1: [Int]!
    var group2: [Int]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.hidden = true

        
        if zonePicked == "zoneOne"{
            self.chooseQuestion1()
        }
        else if zonePicked == "zoneTwo"{
            self.chooseQuestion2()
        }
        else if zonePicked == "zoneThree"{
            self.chooseQuestion3()
        }
        else {
            self.chooseQuestion4()
        }
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answer1pressed(sender: AnyObject) {
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }
    }
    
    @IBAction func answer2pressed(sender: AnyObject) {
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }
    }
    
  
    @IBAction func answer3pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }
    }
    
    @IBAction func answer4pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="The points are \(group1.reduce(0,combine: +))"
            
        }
    }
    
    @IBAction func nextquestion(sender: AnyObject) {
        if zonePicked == "zoneOne"{
            self.chooseQuestion1()
        }
        else if zonePicked == "zoneTwo"{
            self.chooseQuestion2()
        }
        else if zonePicked == "zoneThree"{
            self.chooseQuestion3()
        }
        else {
            self.chooseQuestion4()
        }
        
        nextButton.hidden = true
    }
    
    
 
    func chooseQuestion1 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "What shape is the entrance to the cloisters?"
            answer1.setBackgroundImage(UIImage(named: "zone1_Q1_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone1_Q1_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone1_Q1_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone1_Q1_4.png"), forState: .Normal)
            
        case 1:
            QuestionText.text = "What is the arrangement of shapes in the arch of the cloisters?"
            answer1.setBackgroundImage(UIImage(named: "zone1_Q2_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone1_Q2_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone1_Q2_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone1_Q2_4.png"), forState: .Normal)
            
        case 2:
            QuestionText.text = "What are shapes cut out in the armoured glove?"
            answer1.setBackgroundImage(UIImage(named: "zone1_Q3_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone1_Q3_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone1_Q3_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone1_Q3_4.png"), forState: .Normal)
    
            
            
        default:
            break
            
        }
        
        println("You're on question \(questionNumber)")
        questionNumber++
       
        
        if questionNumber == 4 {
            
          println("Go to the next screen")
            
            performSegueWithIdentifier("group1ToGroup2", sender: self)
        }
    }
    
    func chooseQuestion2 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "What is the shape on the points of the Cathedral roof during construction?"
            answer1.setBackgroundImage(UIImage(named: "zone2_Q1_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone2_Q1_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone2_Q1_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone2_Q1_4.png"), forState: .Normal)
            
        case 1:
            QuestionText.text = "What is the shape of the font?"
            answer1.setBackgroundImage(UIImage(named: "zone2_Q2_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone2_Q2_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone2_Q2_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone2_Q2_4.png"), forState: .Normal)
            
        case 2:
            QuestionText.text = "What is the shape of the freemason symbol given to Elias De Derham?"
            answer1.setBackgroundImage(UIImage(named: "zone2_Q3_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone2_Q3_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone2_Q3_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone2_Q3_4.png"), forState: .Normal)
            
            
            
        default:
            break
            
        }
        
        println("You're on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 4 {
            
            println("Go to the next screen")
            performSegueWithIdentifier("group1ToGroup2", sender: self)

            
        }
    }
    
    func chooseQuestion3 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "What is the shape of the shield painted on the ceiling?"
            answer1.setBackgroundImage(UIImage(named: "zone3_Q1_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone3_Q1_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone3_Q1_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone3_Q1_4.png"), forState: .Normal)
            
        case 1:
            QuestionText.text = "What shape is the arrangement of the Prisoners of Conscience Window?"
            answer1.setBackgroundImage(UIImage(named: "zone3_Q2_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone3_Q2_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone3_Q2_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone3_Q2_4.png"), forState: .Normal)
            
        case 2:
            QuestionText.text = "What shape is the Shrine Tomb of St Osmund?"
            answer1.setBackgroundImage(UIImage(named: "zone3_Q3_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone3_Q3_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone3_Q3_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone3_Q3_4.png"), forState: .Normal)
            
            
            
        default:
            break
            
        }
        
        println("You're on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 4 {
            
            println("Go to the next screen")
            performSegueWithIdentifier("group1ToGroup2", sender: self)

            
        }
    }
    
    func chooseQuestion4 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "What is the shape of the Chapter House?"
            answer1.setBackgroundImage(UIImage(named: "zone4_Q1_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone4_Q1_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone4_Q1_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone4_Q1_4.png"), forState: .Normal)
            
        case 1:
            QuestionText.text = "What is the shape of the fleur-de-lis found on all the cushions?"
            answer1.setBackgroundImage(UIImage(named: "zone4_Q2_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone4_Q2_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone4_Q2_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone4_Q2_4.png"), forState: .Normal)
            
        case 2:
            QuestionText.text = "What is the shape found on the pillow for Nicholas?"
            answer1.setBackgroundImage(UIImage(named: "zone4_Q3_1.png"), forState: .Normal)
            answer2.setBackgroundImage(UIImage(named: "zone4_Q3_2.png"), forState: .Normal)
            answer3.setBackgroundImage(UIImage(named: "zone4_Q3_3.png"), forState: .Normal)
            answer4.setBackgroundImage(UIImage(named: "zone4_Q3_4.png"), forState: .Normal)
            
            
            
        default:
            break
            
        }
        
        println(" You're on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 4 {
            
            println("Go to the next screen")
            performSegueWithIdentifier("group1ToGroup2", sender: self)

            
        }
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
        
        if segue.identifier == "group1ToGroup2" {

            if let destinationVC = segue.destinationViewController as? TwoMultichoiceViewController {
                destinationVC.zonePicked = zonePicked
                destinationVC.group1 = group1
                destinationVC.group2 = group2

            }
        }
    }

}
