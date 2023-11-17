//
//  MainScreen.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI




struct MainScreen : View  {
    var body: some View {
        
        VStack {
        HeaderWelcome()
        ChosenDoctorHeader()
        SearchButton()
        }
    
        
     }
}

struct MainScreen_Preview : PreviewProvider  {
    static var previews: some View  {
        MainScreen()
    }
    
}
        
        
        
