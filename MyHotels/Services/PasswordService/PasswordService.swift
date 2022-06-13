//
//  PasswordService.swift
//  MyHotels
//
//  Created by Artem Kutasevich on 4.06.22.
//

import Foundation

class PasswordService {
    static let passwordService = PasswordService()
    private init() { /* Singleton */ }
    
    func getUser(username: String, password: String) -> User {
        // add logic
        return User()
    }
}
