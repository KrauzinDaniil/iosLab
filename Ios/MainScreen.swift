//
//  MainScreen.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI




struct MainScreen : View  {
    let scrums: [DailyScrum]
    
    var body: some View {
        ScrollView {
            
        VStack {
        HeaderWelcome()
        ChosenDoctorHeader()
        SearchButton()
        IconsList()
        DoctorList(scrums: scrums)
          
       
        }
    
        
     }
    }
}

struct MainScreen_Preview : PreviewProvider  {
    static var previews: some View  {
        MainScreen(scrums: DailyScrum.sampleData)
    }
    
}
        
        
        
