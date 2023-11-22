//
//  MainScreen.swift
//  Ios
//
//  Created by Danni Ios on 17.11.2023.
//

import SwiftUI




struct MainScreen : View  {
    let scrums: [DoctorList]
    
    var body: some View {
        ScrollView {
            
            VStack {
                HeaderWelcome(user: User.createdUser)
                ChosenDoctorHeader(doctor : Doc.chosenDoctor)
                SearchButton()
                IconsList()
                List(scrums: scrums)
                
                
            }
            
            
        }
    }
}

struct MainScreen_Preview : PreviewProvider  {
    static var previews: some View  {
        MainScreen(scrums: DoctorList.sampleData)
    }
    
}



