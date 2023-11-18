//
//  IconsList.swift
//  Ios
//
//  Created by Danni Ios on 18.11.2023.
//

import SwiftUI

struct IconsList : View  {
    var body: some View {
        HStack {
        Button(action: {
            // Действие кнопки
        }) {
            VStack {
                Image("sun")
                Text("Covid-19")
                
                
            }
        }
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    Image("profile-add")
                    Text("Doctor")
                    
                    
                }
            }
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    Image("link")
                    Text("Medicine")
                    
                    
                }
            }
            Button(action: {
                // Действие кнопки
            }) {
                VStack {
                    Image("hospital")
                    Text("Hospital")
                    
                    
                }
            }
    }
  }
}


        
struct IconsList_Preview : PreviewProvider  {
    static var previews: some View  {
        IconsList()
    }
    
}
