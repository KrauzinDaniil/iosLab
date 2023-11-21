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
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    ZStack {
                        Circle().frame(width : 72, height: 72)
                        Image("sun")
                    }.foregroundColor(BaseColor.searchButtonColor)
                    Text(localisedCovid19).font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                }
            }.padding(.trailing, 8)
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    ZStack {
                        Circle().frame(width : 72, height: 72)
                        Image("profile-add")
                    }.foregroundColor(BaseColor.searchButtonColor)
                    Text(localisedDoctor).font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                }
            }.padding(.trailing, 8)
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    ZStack {
                        Circle().frame(width : 72, height: 72)
                        Image("link")
                    }.foregroundColor(BaseColor.searchButtonColor)
                    Text(localisedMedicine).font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                }
            }.padding(.trailing, 8)
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    ZStack {
                        Circle().frame(width : 72, height: 72)
                        Image("hospital")
                    }.foregroundColor(BaseColor.searchButtonColor)
                    Text(localisedHospital).font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                }
            }
        }.padding(.bottom,20)
    }
}



struct IconsList_Preview : PreviewProvider  {
    static var previews: some View  {
        IconsList()
    }
    
}
