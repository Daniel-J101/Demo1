//
//  ViewController.swift
//  ClassDemo1
//
//  Created by Joe Miller on 7/18/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.textField.delegate = self
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let name = textField.text!
        let message = "Thank you " + name + "!"
        statusLabel.text = message
    
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
//        textField.resignFirstResponder()
        self.view.endEditing(true)
        return false;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

