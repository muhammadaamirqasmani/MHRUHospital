//
//  ViewController.swift
//  MHRUHospital
//
//  Created by Techsviewer on 08/03/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Yes: ButtonBorder!
    @IBOutlet weak var No: ButtonBorder!
    @IBOutlet weak var Question: UILabel!
    
    //VARIABLES
    var questionArray = ["""
Is this injury life threatening.
""","""
Do you have an open wound bleeding profusely.
""","""
Are you experiencing sharp heart pain.
"""]
    
    var currentQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.Yes.clipsToBounds = true
        self.No.clipsToBounds = true
        askingQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextQuestion(_ sender: Any) {
        askingQuestion()
    }
    @IBAction func call(_ sender: Any) {
        makeAPhoneCall()
    }
    func askingQuestion(){
            if currentQuestion < questionArray.count{
                print(currentQuestion)
                self.Question.text = questionArray[currentQuestion]
                currentQuestion = currentQuestion + 1
                print(currentQuestion)
            }else{
                self.performSegue(withIdentifier: "disclamer", sender: self)
        }
        
    }
    
    func makeAPhoneCall()  {
        let url: NSURL = URL(string: "TEL://911")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    print("calling on 911")
    }

}

