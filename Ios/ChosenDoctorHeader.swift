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
            }
            
        

        }.frame(width : 250, height: 100).clipShape(RoundedRectangle(cornerRadius: 10)).background(Color.blue)
            .foregroundColor(.white)
        
    }
}




struct ChosenDoctorHeader_Preview : PreviewProvider  {
    static var previews: some View  {
        ChosenDoctorHeader()
    }
    
}
