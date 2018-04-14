
//
//  CounterVC.swift
//  MHRUHospital
//
//  Created by Techsviewer on 02/04/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class CounterVC: UIViewController {

    @IBOutlet weak var TextLbl: UILabel!
    @IBOutlet weak var counterLbl: UILabel!
    var timer = Timer()
    var second = 60
    var min = 0.0
    var text01 = """
Nurse Practioner is on the way and Arrival time
"""
    var RandomNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomNumber = Int(arc4random_uniform(10)+10)
        TextLbl.text = text01
        counterLbl.text = "Time Remaing \(min)"
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTime), userInfo: nil, repeats: true)
    }

    @objc func UpdateTime(){
        if second < 1 {
            second = 60
            RandomNumber -= 1
//            timer.invalidate()
        }else if RandomNumber < 1{
            timer.invalidate()
        }else{
        second -= 1
        counterLbl.text = timeString(time: TimeInterval(second))
        }
        }
    func timeString(time:TimeInterval) -> String{
        let hour = Int(time) / 3600
        var minutes = Int(time) / 60 % 60 + RandomNumber
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hour, minutes, seconds)
    }
}
