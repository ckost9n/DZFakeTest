//
//  ViewController.swift
//  DZFakeTest
//
//  Created by Konstantin on 11.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginTapped(_ sender: UIButton) {
    }
    
    @IBAction func helpUserTapped(_ sender: UIButton) {
    }
    
    @IBAction func helpPasswordTapped(_ sender: UIButton) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }

}

