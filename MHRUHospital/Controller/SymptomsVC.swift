//
//  SymptomsVC.swift
//  MHRUHospital
//
//  Created by Techsviewer on 16/03/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class SymptomsVC: UIViewController {

    @IBOutlet weak var SymptomsLbl: UITextView!
    @IBOutlet weak var SymptomsText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        SymptomsLbl.text = "Fever, stomach pain, vomiting, head aches"
        SymptomsLbl.textColor = UIColor.gray
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Submit(_ sender: Any) {
        self.performSegue(withIdentifier: "MapScreen", sender: self)
    }
    
}
