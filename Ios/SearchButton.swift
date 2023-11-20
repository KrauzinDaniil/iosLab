//
//  SearchButton.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI


struct SearchButton : View  {
    var body: some View {
        Button(action: {
            // Действие кнопки
        }) {
            
            HStack {
                Image("search-normal")
                Text("Search doctor or health issue").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
            }.padding()
            Spacer()
        }.frame(maxWidth: .infinity)
            .background(BaseColor.searchButtonColor).clipShape(RoundedRectangle(cornerRadius: 20)).padding()
    }
    
}




struct SearchButton_Preview : PreviewProvider  {
    static var previews: some View  {
        SearchButton()
    }
    
}
