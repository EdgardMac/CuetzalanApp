//
//  ViewController.swift
//  Postales
//
//  Created by Edgard Maciel on 10/1/15.
//  Copyright © 2015 Edgard Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextFiel: UITextField!
    
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
        messageLabel.text = enterNameTextField.text
        messageLabel.hidden=false
        messageLabel.textColor=UIColor.redColor()
        
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        mailButton.setTitle("Mensaje Enviado!", forState: UIControlState.Normal)
    }

}

