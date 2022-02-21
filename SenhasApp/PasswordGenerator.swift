//
//  PasswordGenerator.swift
//  SenhasApp
//
//  Created by Bruno Vieira Souza on 21/02/22.
//

import Foundation

class PasswordGenerator {
    
    var numberOfCharacters: Int
    var userLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    private let specialCharacterss = "!@#$"
    private let letters = "abcdefghijklnmopqrstuvxwyz"
    private let numbers = "0123456789"
    
    init (numberOfCharacters: Int, userLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        
        //Metodo para limitar a quantidade de caracteres entre 01 e 16
        var numchars = min(numberOfCharacters, 16)
        numchars = max(numchars, 1)
        
        self.numberOfCharacters = numchars
        self.userLetters = userLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacters = useSpecialCharacters
    }
    
}
