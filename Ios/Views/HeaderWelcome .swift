//
//  HeaderWelcome .swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI



struct HeaderWelcome : View  {
    let localisedHello = NSLocalizedString("Hello", comment: "")
    let localisedHi = NSLocalizedString("Hi", comment: "")
    let user : User
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text(localisedHello).font(Font.regularText).foregroundColor(Color.regularTextColorBlue).accessibilityLabel(localisedHello)
                
                
                Text(localisedHi + ", " + user.name).font(Font.welcomeText).foregroundColor(Color.welcomeTextColor).accessibilityValue("Hi \(user.name)")
            }
            
            Spacer()
            Image.frame
        }
        
    }
}




struct HeaderWelcome_Preview : PreviewProvider  {
    static var previews: some View  {
        
        HeaderWelcome(user: User.createdUser)
        
        
        
    }
    
}
