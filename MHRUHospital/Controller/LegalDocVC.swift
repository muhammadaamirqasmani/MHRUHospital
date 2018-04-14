//
//  LegalDocVC.swift
//  MHRUHospital
//
//  Created by Techsviewer on 10/03/2018.
//  Copyright © 2018 maq. All rights reserved.
//

import UIKit

class LegalDocVC: UIViewController {

    @IBOutlet weak var NextBtn: ButtonBorder!
    @IBOutlet weak var DocLbl: UILabel!
    
    var Doc = """
    legal documentation & confidentiality agreement

    M H R U does not disclose its customers information to any outside source unless subpoenaed by law.
    """
    override func viewDidLoad() {
        super.viewDidLoad()
        self.NextBtn.clipsToBounds = true
        self.DocLbl.text = Doc
        // Do any additional setup after loading the view.
    }

    @IBAction func NextBtnAction(_ sender: Any) {
    self.performSegue(withIdentifier: "InsuranceInformation", sender: self)
    }
  
}
