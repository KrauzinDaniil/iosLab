//
//  CardView.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI



struct CardView: View {
    let scrum: DoctorList
    let localisedReviews = NSLocalizedString("Reviews", comment: "")
    let localisedOpenedTime = NSLocalizedString("Open at", comment: "")
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                ZStack {
                    Circle().frame(width: 45, height: 45).background(Color.white)
                    Image(scrum.image).resizable()
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                }.background(Color.white)
                VStack(alignment: .leading) {
                    Text(scrum.name).font(Font.regularBold).foregroundColor(Color.welcomeTextColor)
                    
                    Text(scrum.specialization).font(Font.regularTextSmallest).foregroundColor(Color.regularTextColorBlue)
                }
                Spacer()
                Image("location")
                Text(String(scrum.distance)  + " KM").font(Font.regularTextSmall).foregroundColor(Color.regularTextColorBlue)
                
                  
                
            }.font(.caption)
            Divider()
            HStack {
                Image("yellow-clock")
                Text("\(scrum.rating) (\(scrum.reviewAmount) \(localisedReviews))") .font(Font.lightTextSmallest).foregroundColor(Color.rewievsColorText)
                
                Image("blue-clock").padding(.leading, 35)
                Text("\(localisedOpenedTime) \(scrum.whenOpened)").font(Font.lightTextSmallest).foregroundColor(Color.distanceColorText)
                
                
                
            }
            
            
            
            
        }.padding()
            .foregroundColor(scrum.theme.accentColor)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DoctorList.sampleData[0]
    static var previews: some View {
        CardView(scrum:scrum).previewLayout(.fixed(width : 400, height : 100))
    }
}
