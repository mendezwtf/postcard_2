//
//  ViewController.swift
//  Postcard_2
//
//  Created by Carlos Mendez on 2/10/15.
//  Copyright (c) 2015 Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //below is label for name
    @IBOutlet weak var nameLabel: UILabel!
    //below is label for message
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //Code for pressing the button :)
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle ("Mail Sent", forState: UIControlState.Normal)
    }

}

