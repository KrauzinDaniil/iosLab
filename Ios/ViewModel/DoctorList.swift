//
//  DailyScrum.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import Foundation



struct DoctorList : Identifiable {
    let id : UUID
    var image: String
    var name: String
    var specialization: String
    var distance: Float
    var rating: String
    var reviewAmount: String
    var whenOpened: String
    
    var theme: Theme
    
    init(id: UUID = UUID(), image: String, name: String, specialization: String, distance : Float, theme: Theme, rating: String, reviewAmount: String, whenOpened: String) {
        self.id = id
        self.image = image
        self.name = name
        self.specialization = specialization
        self.distance = distance
        self.theme = theme
        self.rating = rating
        self.reviewAmount = reviewAmount
        self.whenOpened = whenOpened
    }
}


extension DoctorList {
    static var sampleData: [DoctorList] {
        [
            DoctorList(image: "docta", name: "Dr. Joseph Brosito", specialization: "Dental Specialist", distance: 1.1, theme: .yellow, rating: "4.7", reviewAmount: "120", whenOpened: "17.00"),
            DoctorList(image: "docta-2",  name: "Dr. Imran Syahir",   specialization: "General Doctor", distance: 1.2, theme: .orange, rating: "4.8", reviewAmount: "150", whenOpened: "15.00")
            
        ]
    }
}
