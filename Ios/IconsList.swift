//
//  IconsList.swift
//  Ios
//
//  Created by Danni Ios on 18.11.2023.
//

import SwiftUI

struct IconsList : View  {
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
                    Text("Covid-19").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
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
                    Text("Doctor").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
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
                    Text("Medicine").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
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
                    Text("Hospital").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                }
            }
        }
    }
}



struct IconsList_Preview : PreviewProvider  {
    static var previews: some View  {
        IconsList()
    }
    
}
