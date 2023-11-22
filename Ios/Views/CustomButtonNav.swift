//
//  CustomButtonNav.swift
//  Ios
//
//  Created by Danni Ios on 22.11.2023.
//

import SwiftUI




struct CustomButton: View {
    let image: Image
    let buttonText: String
    
    
    var body: some View {
        Button(action: {
            // Действие кнопки
        }) {
            VStack {
                ZStack {
                    Circle().frame(width: CircleSizeIconList.width, height:CircleSizeIconList.height)
                    image
                }.foregroundColor(BaseColor.searchButtonColor)
                Text(buttonText).font(Font.regularTextSmaller).foregroundColor(Color.regularTextColorBlue)
            }
        }.accessibilityLabel("\(buttonText) clicked button")
    }
}
