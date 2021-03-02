//
//  User.swift
//  HW1
//
//  Created by Nikita Shamaev on 02.03.2021.
//

import Foundation

class User{
    let inserted_numbers: String
    
    init(numbers: String){
        self.inserted_numbers = numbers
    }
}

class UserManager {
    
    static let shared = UserManager()
    private init() {}
    
    var user: User? = nil
}
