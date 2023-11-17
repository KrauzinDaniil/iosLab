//
//  ChosenDoctorHeader.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI

struct ChosenDoctorHeader : View  {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Circle().frame(width: 65, height: 65)
                Image("Doctor").resizable()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
                }
                VStack  {
                Text("Dr. Imran Syahir")
                Text("General Doctor")
                }
                
                Button(action: {
                            // Действие кнопки
                        }) {
                            Image("arrow-right")
                                
                        }
            }.padding()
            Divider().frame(width: 200, height: 1)
            HStack()  {
                Image("calendar-2")
                Text("Sunday 23 June").font(.caption)
                Image("clock")
                Text("11:00 - 12:00 AM").font(.caption)
            
            }
           
            
            
            
        

        }.frame(width : 300).background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 20))
            .foregroundColor(.white).padding()
        
    }
}




struct ChosenDoctorHeader_Preview : PreviewProvider  {
    static var previews: some View  {
        ChosenDoctorHeader()
    }
    
}
