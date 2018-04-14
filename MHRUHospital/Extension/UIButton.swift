//
//  UIButton.swift
//  EasyShopping
//
//  Created by admin on 11/11/2017.
//  Copyright © 2017 MuhammadAamir. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class ButtonBorder: UIButton {
    
    
    override func draw(_ rect: CGRect) {
        self.layer.borderWidth = self.width
        self.layer.borderColor = self.color.cgColor
        self.layer.cornerRadius = cornerRadius
        updaterounded()
        
    }
    @IBInspectable var cornerRadius: CGFloat = 20.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updaterounded()
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var width:CGFloat = 1 {
        didSet{
            self.setNeedsDisplay()
        }
    }
    @IBInspectable var color:UIColor = UIColor.black {
        didSet{
            self.setNeedsDisplay()
        }
    }
    
    func updaterounded(){
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
