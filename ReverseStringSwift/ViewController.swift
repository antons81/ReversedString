//
//  ViewController.swift
//  ReverseStringSwift
//
//  Created by Anton on 6/13/14.
//  Copyright (c) 2014 áSoft. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
     var origText        : UITextField!
     var reverseLabel    : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //original text
        origText = UITextField(frame: CGRect(x: 30.0, y: 160.0, width: 260.0, height: 40.0))
            origText.layer.borderWidth = 0.5
            origText.layer.cornerRadius = 5
            origText.textAlignment = NSTextAlignment.Center
            origText.layer.backgroundColor = UIColor(red: 0.949, green: 0.882, blue: 0.710, alpha: 0.9).CGColor
        self.view.addSubview(origText)
        
        //reverse button
        let reverseButton = UIButton(type: UIButtonType.System)
            reverseButton.frame = CGRectMake(30.0, 220.0, 260.0, 40.0)
            reverseButton.backgroundColor = UIColor.lightGrayColor()
            reverseButton.layer.cornerRadius = 5
            reverseButton.setTitle("REVERSE YOUR TEXT", forState: UIControlState.Normal)
            reverseButton.addTarget(self, action: #selector(ViewController.reverseString), forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(reverseButton)
        
        //reversed string
            reverseLabel = UILabel(frame: CGRectMake(30.0, 300.0, 260.0, 40.0))
            reverseLabel.layer.cornerRadius = 5
            reverseLabel.textAlignment = NSTextAlignment.Center
            reverseLabel.layer.backgroundColor = UIColor(red: 0.949, green: 0.882, blue: 0.710, alpha: 0.9).CGColor
            self.view.addSubview(reverseLabel)
        
         self.origText.delegate = self
        
    }
    
    

    func reverseString() {

        var arr : Array<Character> = Array(origText.text!.characters)
        var reversedString = ""

        for var index = arr.count-1; index>=0; index -= 1 {
            reversedString.append(arr[index])
        }

        reverseLabel.text = reversedString
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        origText.resignFirstResponder()
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    

}

