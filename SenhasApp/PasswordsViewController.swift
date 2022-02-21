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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func generate(_ sender: UIButton) {
    }
}
