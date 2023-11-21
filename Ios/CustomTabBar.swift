//
//  CustomTabBar.swift
//  Ios
//
//  Created by Danni Ios on 21.11.2023.
//
import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
   
    var body: some View {
        HStack(spacing : 0) {
            TabBarButton(imageName: "TabHome", isSelected: selectedTab == 0) {
                selectedTab = 0
            }
            Spacer()
            TabBarButton(imageName: "TabCalendar", isSelected: selectedTab == 1) {
                selectedTab = 1
            }
            Spacer()
            TabBarButton(imageName: "TabMessage", isSelected: selectedTab == 2) {
                selectedTab = 2
            }
            Spacer()
            TabBarButton(imageName: "TabProfile", isSelected: selectedTab == 3) {
                selectedTab = 3
            }
        }
       
        .foregroundColor(.white).padding(.trailing, 20).padding(.leading, 20)
    }
}

struct TabBarButton: View {
    let imageName: String
    let isSelected: Bool
    let action: () -> Void
    let localisedHomeTab = NSLocalizedString("Home", comment: "")
    var body: some View {
        Button(action: action) {
            HStack {
            Image(imageName).resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(10)
                   
                
                if(imageName == "TabHome")  {
                    Text(localisedHomeTab).font(Font.nunitoBold).foregroundColor(Color.distanceColorText).padding(.trailing)
                   
                }
            }
                
            
                
        }.background(isSelected ? BaseColor.tabButtonColor : Color.clear).cornerRadius(10)
    }
}
