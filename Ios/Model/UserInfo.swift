//
//  UserInfo.swift
//  Ios
//
//  Created by Danni Ios on 22.11.2023.
//

import Foundation


struct User : Identifiable {
    let id : UUID
    var name : String 
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}



extension User {
    static var createdUser = User(name : "James")
}
