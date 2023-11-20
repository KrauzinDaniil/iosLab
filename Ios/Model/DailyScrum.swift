//
//  DailyScrum.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import Foundation



struct DailyScrum : Identifiable {
    let id : UUID
    var image: String
    var name: String
    var specialization: String
    var distance: Float
    
    var theme: Theme

    init(id: UUID = UUID(), image: String, name: String, specialization: String, distance : Float, theme: Theme) {
        self.id = id
        self.image = image
        self.name = name
        self.specialization = specialization
        self.distance = distance
        self.theme = theme
    }
}

    
extension DailyScrum {
    static var sampleData: [DailyScrum] {
        [
            DailyScrum(image: "doctorOrder", name: "Dr. Joseph Brosito", specialization: "Dental Specialist", distance: 1.2, theme: .yellow),
            DailyScrum(image: "Doctor",  name: "Dr. Imran Syahir",   specialization: "General Doctor", distance: 1.2, theme: .orange)
            
        ]
    }
}
