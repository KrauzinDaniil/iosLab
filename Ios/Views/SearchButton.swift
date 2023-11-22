//
//  SearchButton.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI


struct SearchButton : View  {
    let localisedSearch = NSLocalizedString("Search doctor or health issue", comment: "")
    
    var body: some View {
        Button(action: {
            //
        }) {
            
            HStack {
                Image.searchNormal
                Text(localisedSearch).font(Font.regularTextSmaller).foregroundColor(Color.regularTextColorBlue)
            }.padding()
            Spacer()
        }.frame(maxWidth: .infinity)
            .background(BaseColor.searchButtonColor).clipShape(RoundedRectangle(cornerRadius: 20)).accessibilityLabel("Search Button Clicked")
    }
    
}




struct SearchButton_Preview : PreviewProvider  {
    static var previews: some View  {
        SearchButton()
    }
    
}
