//
//  DoctorMenu.swift
//  Ios
//
//  Created by Danni Ios on 22.11.2023.
//

import Foundation


struct Doc : Identifiable {
    let id : UUID
    var name : String
    var specialization : String
    var avatar : String
    var date : String
    var time : String
    
    init(name: String, specialization : String, avatar : String, date : String, time : String ) {
        self.id = UUID()
        self.name = name
        self.specialization = specialization
        self.avatar = avatar
        self.date = date
        self.time = time
    }
}



extension Doc {
    static var chosenDoctor = Doc(name : "Imran Syahir", specialization: "General Doctor", avatar : "Doctor", date: "Sunday, 12 June", time : "11:00 - 12:00 AM")
}
