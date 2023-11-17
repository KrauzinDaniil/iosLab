//
//  MainScreen.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI


struct NavPanel : View  {
    var body: some View {
            TabView {
                
                MainScreen()
                   
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        
                    }
                Text("Вторая вкладка")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                      
                    }
                
            Text("Вторая вкладка")
            .tabItem {
                Image(systemName: "2.square.fill")
                
            }
                
            }.padding()
    }
}



struct NavPanel_Preview : PreviewProvider  {
    static var previews: some View  {
        NavPanel()
    }
    
}




