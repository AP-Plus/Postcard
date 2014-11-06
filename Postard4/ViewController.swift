//
//  ViewController.swift
//  Postard4
//
//  Created by Agnieszka Purc on 02.11.2014.
//  Copyright (c) 2014 Agnieszka Purc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mesaggeLebel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMesaggeTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendmailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        mesaggeLebel.hidden = false
        mesaggeLebel.text = enterMesaggeTextField.text
        mesaggeLebel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
       
        
        enterMesaggeTextField.text = ""
        enterMesaggeTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

