//
//  ChosenDoctorHeader.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI

struct ChosenDoctorHeader : View  {
    let doctor : Doc
    let localisedDr = NSLocalizedString("Dr", comment: "")
    var body: some View {
        VStack {
            
            HStack {
                ZStack {
                    Circle().frame(width: CircleSizeHeader.width, height: CircleSizeHeader.height )
                    Image(doctor.avatar).resizable()
                        .frame(width: CircleSizeHeader.width, height: CircleSizeHeader.height )
                        .clipShape(Circle())
                }
                VStack(alignment: .leading)  {
                    Text(localisedDr + ". " + doctor.name).font(Font.regularBold).padding(.bottom, 1)
                        .accessibilityValue("Doctor \(doctor.name)")
                    Text(doctor.specialization).font(Font.regularTextSmall).foregroundColor(Color.specializationTextColor).accessibilityValue("\(doctor.specialization)")
                }
                Spacer()
                Button(action: {
                    
                }) {
                    Image.arrowRight
                    
                }.accessibilityLabel("Button for more info clicked")
            }.padding(.trailing, 20).padding(.leading, 20).padding(.top, 20).padding(.bottom, 1)
            Divider().frame(maxWidth: .infinity).padding(.trailing, 20).padding(.leading,20)
            HStack()  {
                Image.calendar
                Text(doctor.date).font(Font.regularTextSmallest).accessibilityValue("\(doctor.date)")
                Spacer()
                Image.clock
                Text(doctor.time).font(Font.regularTextSmallest).accessibilityValue("\(doctor.time)")
                
            }.padding(.trailing, 60).padding(.leading, 20).padding(.top, 10).padding(.bottom, 20)
            
            
            
            
            
            
        }.frame(maxWidth: .infinity).background(BaseColor.mainNavColor).clipShape(RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.white).padding(.bottom, 1)
        
    }
}




struct ChosenDoctorHeader_Preview : PreviewProvider  {
    static var previews: some View  {
        ChosenDoctorHeader(doctor : Doc.chosenDoctor)
    }
    
}
