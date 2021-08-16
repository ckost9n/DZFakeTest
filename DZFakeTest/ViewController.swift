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
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginTapped(_ sender: UIButton) {
        if loginTF.text == "Kostya", passwordTF.text == "123" {
            performSegue(withIdentifier: "detailSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password!")
        }
        
    }
    
    @IBAction func unwindToMainScreen(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "unwindSegue" else { return }
        guard let sourceViewController = unwindSegue.source as? SecondViewController else { return }
        resultLabel.text = sourceViewController.label.text
    }
    
    @IBAction func helpUserTapped(_ sender: UIButton) {
        showAlert(title: "Opps", message: "Administrator is Kostya")
    }
    
    @IBAction func helpPasswordTapped(_ sender: UIButton) {
        showAlert(title: "Opps", message: "Try to enter 123")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondViewController = segue.destination as? SecondViewController else { return }
        secondViewController.login = loginTF.text
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(alert, animated: true)
    }

}

