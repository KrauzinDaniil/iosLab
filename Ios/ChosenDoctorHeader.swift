//
//  ChosenDoctorHeader.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI

struct ChosenDoctorHeader : View  {
    var body: some View {
        VStack {
            
            HStack {
                ZStack {
                    Circle().frame(width: 50, height: 60)
                    Image("Doctor").resizable()
                        .frame(width: 50, height: 60)
                        .clipShape(Circle())
                }
                VStack(alignment: .leading)  {
                    Text("Dr. Imran Syahir").font(Font.regularBold).padding(.bottom, 1)
                    Text("General   Doctor").font(Font.regularTextSmall).foregroundColor(Color.specializationTextColor)
                }
                Spacer()
                Button(action: {
                    // Действие кнопки
                }) {
                    Image("arrow-right")
                    
                }
            }.padding(.trailing, 20).padding(.leading, 20).padding(.top, 20).padding(.bottom, 1)
            Divider().frame(maxWidth: .infinity).padding(.trailing, 20).padding(.leading,20)
            HStack()  {
                Image("calendar-2")
                Text("Sunday, 23 June").font(Font.regularTextSmallest)
                Spacer()
                Image("clock")
                Text("11:00 - 12:00 AM").font(Font.regularTextSmallest)
                
            }.padding(.trailing, 60).padding(.leading, 20).padding(.top, 10).padding(.bottom, 20)
            
            
            
            
            
            
        }.frame(maxWidth: .infinity).background(BaseColor.mainNavColor).clipShape(RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.white).padding(.trailing, 15).padding(.leading, 15).padding(.bottom, 1)
        
    }
}




struct ChosenDoctorHeader_Preview : PreviewProvider  {
    static var previews: some View  {
        ChosenDoctorHeader()
    }
    
}
