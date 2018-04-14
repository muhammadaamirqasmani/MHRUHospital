//
//  InsuranceInformationVC.swift
//  MHRUHospital
//
//  Created by Techsviewer on 10/03/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class InsuranceInformationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Submit(_
        sender: Any) {
    self.performSegue(withIdentifier: "Symptoms", sender: self)
    }
}
