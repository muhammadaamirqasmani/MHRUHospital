//
//  DisclamerVC.swift
//  MHRUHospital
//
//  Created by Techsviewer on 09/03/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class DisclamerVC: UIViewController {

    @IBOutlet weak var Disclamer: UILabel!
    var disclamerArgument = """
    We reserve the right to notify 911 and paramedics if issue is worse that what is said.

    you attest to the information being provided as true any fraud will be met with legal charges.

    We do reserve the right to leave or not enter premises if environment is  unsafe for nurse practitioner
    """
    @IBOutlet weak var btn: ButtonBorder!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.clipsToBounds = true
        Disclamer.text = disclamerArgument
        // Do any additional setup after loading the view.
    }

    @IBAction func IAgree(_ sender: Any) {
        self.performSegue(withIdentifier: "profile", sender: self)
    }
    
}
