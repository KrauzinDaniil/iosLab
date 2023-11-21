//
//  MainScreen.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI


struct NavPanel : View  {
    let scrums: [DoctorList]
    var body: some View {
        
        TabView {
             
            MainScreen(scrums: scrums).padding(.leading, 12).padding(.trailing, 12)
                .tabItem {
                    Button(action: {
                        // Действие кнопки
                    }) {
                        ZStack {
                            Image("Home")
                            Text("")
                          
                            
                        }
                    }
                    
                }
            
            
            Text("Вторая вкладка")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    
                }
            
            Text("Вторая вкладка")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    
                }
            
        }
    }
}




struct NavPanel_Preview : PreviewProvider  {
    static var previews: some View  {
        NavPanel(scrums: DoctorList.sampleData)
    }
    
}




