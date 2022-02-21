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
    
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()

        var universe: String = "" // variavel para armazenar o universo de caracters a ser utilizado para gerar as senhas
        
        // IFS para selecionar os caracters selecionados pelo usuario.
        if userLetters {
            universe += letters
        }
        if useNumbers {
            universe += numbers
        }
        if useSpecialCharacters {
            universe += specialCharacterss
        }
        if useCapitalLetters {
            universe += letters.uppercased() //letras maiusculas
        }
        
        let universeArray = Array(universe) //um array contendo cada um caracter que esta selecionado
        
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index]) //converto a letra para string porque ela e do tipo caracter.
            }
            passwords.append(password) // adiciona na variavel ate o numero de senhas ser menor que a quantidade informada.
        }
        return passwords
    }
}
