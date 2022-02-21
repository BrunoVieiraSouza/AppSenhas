//
//  PasswordsViewController.swift
//  SenhasApp
//
//  Created by Bruno Vieira Souza on 21/02/22.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var userLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, userLetters: userLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
    }
    
    func generatePasswords() {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0)) //JOGANDO O TEXT FIELD LA PRO INICIO
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "                       ")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
}
