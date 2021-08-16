//
//  SecondViewController.swift
//  DZFakeTest
//
//  Created by Konstantin on 15.08.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
    }
    
    @IBAction func cancelTapped(_ sender: UIButton) {
    }
    
}
