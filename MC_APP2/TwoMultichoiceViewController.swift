//
//  TwoMultichoiceViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 08/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class TwoMultichoiceViewController: UIViewController {

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
        println(group1)
        println(zonePicked!)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answer1pressed(sender: AnyObject) {
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
        }else if questionNumber == 1{
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }
    }
    
    @IBAction func answer2pressed(sender: AnyObject) {
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
        }else if questionNumber == 1{
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }
    }
    
    
    @IBAction func answer3pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
        }else if questionNumber == 1{
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }
    }
    
    @IBAction func answer4pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        
        if questionNumber == 0 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
        }else if questionNumber == 1{
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group2.append(1)
            result.text="the points are \(group2.reduce(0,+))"
            
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
            QuestionText.text = "first question"
            answer1.setTitle("first answer", forState: UIControlState.Normal)
            answer2.setTitle("first answer", forState: UIControlState.Normal)
            answer3.setTitle("first answer", forState: UIControlState.Normal)
            answer4.setTitle("first answer", forState: UIControlState.Normal)
            
        case 1:
            QuestionText.text = "second question"
            answer1.setTitle("second answer", forState: UIControlState.Normal)
            answer2.setTitle("second answer", forState: UIControlState.Normal)
            answer3.setTitle("second answer", forState: UIControlState.Normal)
            answer4.setTitle("second answer", forState: UIControlState.Normal)
            
        case 2:
            QuestionText.text = "third question"
            answer1.setTitle("third answer", forState: UIControlState.Normal)
            answer2.setTitle("third answer", forState: UIControlState.Normal)
            answer3.setTitle("third answer", forState: UIControlState.Normal)
            answer4.setTitle("third answer", forState: UIControlState.Normal)
            
            
            
        default:
            break
            
        }
        
        println("youre on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 3 {
            
            println("go to the next screen")
            performSegueWithIdentifier("FinishMultiChoice", sender: self)

            
            
        }
    }
    
    func chooseQuestion2 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "forth question"
            answer1.setTitle("4first answer", forState: UIControlState.Normal)
            answer2.setTitle("4first answer", forState: UIControlState.Normal)
            answer3.setTitle("4first answer", forState: UIControlState.Normal)
            answer4.setTitle("4first answer", forState: UIControlState.Normal)
            
        case 1:
            QuestionText.text = "5-second question"
            answer1.setTitle("5-second answer", forState: UIControlState.Normal)
            answer2.setTitle("5-second answer", forState: UIControlState.Normal)
            answer3.setTitle("5-second answer", forState: UIControlState.Normal)
            answer4.setTitle("5-second answer", forState: UIControlState.Normal)
            
        case 2:
            QuestionText.text = "6-third question"
            answer1.setTitle("6-third answer", forState: UIControlState.Normal)
            answer2.setTitle("6-third answer", forState: UIControlState.Normal)
            answer3.setTitle("6-third answer", forState: UIControlState.Normal)
            answer4.setTitle("6-third answer", forState: UIControlState.Normal)
            
            
            
        default:
            break
            
        }
        
        println("youre on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 3 {
            
            println("go to the next screen")
            performSegueWithIdentifier("FinishMultiChoice", sender: self)

            
            
        }
    }
    
    func chooseQuestion3 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "7-first question"
            answer1.setTitle("7-first answer", forState: UIControlState.Normal)
            answer2.setTitle("7-first answer", forState: UIControlState.Normal)
            answer3.setTitle("7-first answer", forState: UIControlState.Normal)
            answer4.setTitle("7-first answer", forState: UIControlState.Normal)
            
        case 1:
            QuestionText.text = "8-second question"
            answer1.setTitle("8-second answer", forState: UIControlState.Normal)
            answer2.setTitle("8-second answer", forState: UIControlState.Normal)
            answer3.setTitle("8-second answer", forState: UIControlState.Normal)
            answer4.setTitle("8-second answer", forState: UIControlState.Normal)
            
        case 2:
            QuestionText.text = "9-third question"
            answer1.setTitle("9-third answer", forState: UIControlState.Normal)
            answer2.setTitle("9-third answer", forState: UIControlState.Normal)
            answer3.setTitle("9-third answer", forState: UIControlState.Normal)
            answer4.setTitle("9-third answer", forState: UIControlState.Normal)
            
            
            
        default:
            break
            
        }
        
        println("youre on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 3 {
            
            println("go to the next screen")
            performSegueWithIdentifier("FinishMultiChoice", sender: self)

            
            
        }
    }
    
    func chooseQuestion4 (){
        
        
        switch questionNumber{
        case 0:
            QuestionText.text = "10-first question"
            answer1.setTitle("10-first answer", forState: UIControlState.Normal)
            answer2.setTitle("10-first answer", forState: UIControlState.Normal)
            answer3.setTitle("10-first answer", forState: UIControlState.Normal)
            answer4.setTitle("10-first answer", forState: UIControlState.Normal)
            
        case 1:
            QuestionText.text = "11-second question"
            answer1.setTitle("11-second answer", forState: UIControlState.Normal)
            answer2.setTitle("11-second answer", forState: UIControlState.Normal)
            answer3.setTitle("11-second answer", forState: UIControlState.Normal)
            answer4.setTitle("11-second answer", forState: UIControlState.Normal)
            
        case 2:
            QuestionText.text = "12-third question"
            answer1.setTitle("12-third answer", forState: UIControlState.Normal)
            answer2.setTitle("12-third answer", forState: UIControlState.Normal)
            answer3.setTitle("12-third answer", forState: UIControlState.Normal)
            answer4.setTitle("12-third answer", forState: UIControlState.Normal)
            
            
            
        default:
            break
            
        }
        
        println("youre on question \(questionNumber)")
        questionNumber++
        
        
        if questionNumber == 3 {
            
            println("go to the next screen")
            performSegueWithIdentifier("FinishMultiChoice", sender: self)

            
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
        
        if segue.identifier == "FinishMultiChoice" {
            
            if let destinationVC = segue.destinationViewController as? FinishMultichoiceViewController {
                destinationVC.zonePicked = zonePicked
                destinationVC.group1 = group1
                destinationVC.group2 = group2
            }
        }
    }

    
}
