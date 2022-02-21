//
//  ViewController.swift
//  SenhasApp
//
//  Created by Bruno Vieira Souza on 21/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPassword = Int(tfTotalPasswords.text!){
            passwordsViewController.numberOfPasswords = numberOfPassword
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        passwordsViewController.userLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        view.endEditing(true) // qualquer textField que esteja selecionado ele bloqueara
    }
}

