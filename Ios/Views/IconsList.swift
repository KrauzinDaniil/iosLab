//
//  IconsList.swift
//  Ios
//
//  Created by Danni Ios on 18.11.2023.
//

import SwiftUI

struct IconsList : View  {
    let localisedCovid19 = NSLocalizedString("Covid 19", comment: "")
    let localisedDoctor = NSLocalizedString("Doctor", comment: "")
    let localisedMedicine = NSLocalizedString("Medicine", comment: "")
    let localisedHospital = NSLocalizedString("Hospital", comment: "")
    
    var body: some View {
        HStack {
            CustomButton(image: Image.sun, buttonText: localisedCovid19)
            Spacer()
            CustomButton(image: Image.profile, buttonText: localisedDoctor)
            Spacer()
            CustomButton(image: Image.link, buttonText: localisedMedicine)
            Spacer()
            CustomButton(image: Image.hospital, buttonText: localisedHospital)
        }.padding(.bottom,20).accessibilityLabel("\(localisedHospital) clicked button")
        
        
        
    }
}



struct IconsList_Preview : PreviewProvider  {
    static var previews: some View  {
        IconsList()
    }
    
}
