//
//  HeaderWelcome .swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI



struct HeaderWelcome : View  {
    var body: some View {
        
        HStack {
        VStack(alignment: .leading) {
            Text("Hello")
            Text("Hi, James")
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
