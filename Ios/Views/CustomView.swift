//
//  CustomView.swift
//  Ios
//
//  Created by Danni Ios on 21.11.2023.
//


import SwiftUI

struct TBView: View {
    @State private var selectedTab = 0
    let scrums: [DoctorList]
    var body: some View {
        
        VStack(spacing: 0) {
            
            
            switch selectedTab {
            case 0:
                MainScreen(scrums: scrums).padding(.leading, MainScreenPaddings.width).padding(.trailing, MainScreenPaddings.height)
            case 1:
                
                Text("Tab 2")
                Spacer().padding()
                
            case 2:
                Text("Tab 3")
                Spacer().padding()
            case 3:
                Text("Tab 4")
                Spacer().padding()
            default:
                Text("Unknown Tab")
            }
            
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}


struct TBView_Previews: PreviewProvider {
    static var previews: some View {
        TBView(scrums: DoctorList.sampleData)
        
    }
}
