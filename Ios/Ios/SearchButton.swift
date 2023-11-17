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
                Text("Search doctor or health issue")
            }.padding()
                }.background(Color.gray).clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
}




struct SearchButton_Preview : PreviewProvider  {
    static var previews: some View  {
        SearchButton()
    }
    
}
