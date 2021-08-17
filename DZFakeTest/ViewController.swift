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
    
    let userName = "Kostya"
    let userPassword = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginTapped() {
        if loginTF.text == userName, passwordTF.text == userPassword {
            performSegue(withIdentifier: "detailSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password!", textField: passwordTF)
        }
        
    }
    
    @IBAction func unwindToMainScreen(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "unwindSegue" else { return }
        guard let sourceViewController = unwindSegue.source as? SecondViewController else { return }
        resultLabel.text = sourceViewController.label.text
        loginTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func helpUserTapped(_ sender: UIButton) {
        showAlert(title: "Opps", message: "Administrator is \(userName)")
    }
    
    @IBAction func helpPasswordTapped(_ sender: UIButton) {
        showAlert(title: "Opps", message: "Try to enter \(userPassword)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detailSegue" else { return }
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.login = loginTF.text
//        guard let secondViewController = segue.destination as? SecondViewController else { return }
//        secondViewController.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        })
        
        present(alert, animated: true)
    }

}

//extension ViewController: UITextFieldDelegate {
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == loginTF {
//            loginTF.resignFirstResponder()
//            passwordTF.becomeFirstResponder()
//        } else {
//            loginTapped()
//        }
//        return true
//    }
//}
