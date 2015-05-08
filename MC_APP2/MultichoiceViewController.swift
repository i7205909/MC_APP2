//
//  MultichoiceViewController.swift
//  MC_APP2
//
//  Created by UDI-ME-TA on 07/05/2015.
//  Copyright (c) 2015 UDI-ME-TA. All rights reserved.
//

import UIKit

class MultichoiceViewController: UIViewController {

    @IBOutlet var QuestionText: UILabel!
    @IBOutlet var answer1: UIButton!
    @IBOutlet var answer2: UIButton!
    @IBOutlet var answer3: UIButton!
    @IBOutlet var answer4: UIButton!
    @IBOutlet var result: UILabel!
    @IBOutlet var nextButton: UIButton!
    var questionNumber = 0
    
    
    var group1 = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()

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
            result.text="the points are \(group1.reduce(0,+))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }
    }
    
    @IBAction func answer2pressed(sender: AnyObject) {
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }
    }
    
  
    @IBAction func answer3pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }
    }
    
    @IBAction func answer4pressed(sender: AnyObject) {
        
        nextButton.hidden = false
        
        
        if questionNumber == 0 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
        }else if questionNumber == 1{
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }else if questionNumber == 2 {
            group1.append(1)
            result.text="the points are \(group1.reduce(0,+))"
            
        }
    }
    
    @IBAction func nextquestion(sender: AnyObject) {
        self.chooseQuestion()
        nextButton.hidden = true
    }
    
    
    
    func chooseQuestion (){
        
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

}
