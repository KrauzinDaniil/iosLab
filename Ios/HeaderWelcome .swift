//
//  HeaderWelcome .swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI



struct HeaderWelcome : View  {
    let localisedString = NSLocalizedString("a", comment: "")
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("Hello").font(Font.regularText).foregroundColor(Color.regularTextColorBlue)
                Text("Hi, James").font(Font.welcomeText).foregroundColor(Color.welcomeTextColor)
            }
            
            Spacer()
            Image("Frame")
        }.padding()
        
    }
}




struct HeaderWelcome_Preview : PreviewProvider  {
    static var previews: some View  {
       
            HeaderWelcome()
               
            
        
    }
    
}
