//
//  CardView.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI



struct DoctorSample: View {
    let scrum: DoctorList
    let localisedReviews = NSLocalizedString("Reviews", comment: "")
    let localisedOpenedTime = NSLocalizedString("Open at", comment: "")
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                ZStack {
                    Circle().frame(width: CircleSizeDoctor.width, height: CircleSizeDoctor.height).background(Color.white)
                    Image(scrum.image).resizable()
                        .frame(width: CircleSizeDoctor.width, height: CircleSizeDoctor.height)
                        .clipShape(Circle())
                }.background(Color.white)
                VStack(alignment: .leading) {
                    Text(scrum.name).font(Font.regularBold).foregroundColor(Color.welcomeTextColor).accessibilityValue("\(scrum.name)")
                    
                    Text(scrum.specialization).font(Font.regularTextSmallest).foregroundColor(Color.regularTextColorBlue).accessibilityValue("\(scrum.specialization)")
                }
                Spacer()
                Image.location
                Text(String(scrum.distance)  + " KM").font(Font.regularTextSmall).foregroundColor(Color.regularTextColorBlue).accessibilityValue("\(scrum.distance) KM")
                
                
                
            }
            Divider()
            HStack {
                Image.yellow_clock
                Text("\(scrum.rating) (\(scrum.reviewAmount) \(localisedReviews))") .font(Font.lightTextSmallest).foregroundColor(Color.rewievsColorText).accessibilityValue("\(scrum.rating) (\(scrum.reviewAmount) \(localisedReviews))")
                
                Image.blue_clock.padding(.leading, 35)
                Text("\(localisedOpenedTime) \(scrum.whenOpened)").font(Font.lightTextSmallest).foregroundColor(Color.distanceColorText).accessibilityValue("\(localisedOpenedTime) \(scrum.whenOpened)")
                
                
                
            }
            
            
            
            
        }.padding()
            .foregroundColor(scrum.theme.accentColor)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DoctorList.sampleData[0]
    static var previews: some View {
        DoctorSample(scrum:scrum).previewLayout(.fixed(width : 400, height : 100))
    }
}
