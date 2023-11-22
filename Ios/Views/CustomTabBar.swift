//
//  CustomTabBar.swift
//  Ios
//
//  Created by Danni Ios on 21.11.2023.
//
import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    let localisedHomeNavTab = NSLocalizedString("Home navigation tab clicked", comment: "")
    let localisedCalendarNavTab = NSLocalizedString("Calendar navigation tab clicked", comment: "")
    let localisedMessageNavTab = NSLocalizedString("Message navigation tab clicked", comment: "")
    let localisedProfileNavTab = NSLocalizedString("Profile navigation tab clicked", comment: "")
    var body: some View {
        HStack(spacing : 0) {
            TabBarButton(image: Image.tabHome, isSelected: selectedTab == 0) {
                selectedTab = 0
            }.accessibilityValue("\(localisedHomeNavTab)")
            Spacer()
            TabBarButton(image: Image.tabCalendar, isSelected: selectedTab == 1) {
                selectedTab = 1
            }.accessibilityValue("\(localisedCalendarNavTab)")
            Spacer()
            TabBarButton(image: Image.tabMessage, isSelected: selectedTab == 2) {
                selectedTab = 2
            }.accessibilityValue("\(localisedMessageNavTab)")
            Spacer()
            TabBarButton(image: Image.tabProfile, isSelected: selectedTab == 3) {
                selectedTab = 3
            }.accessibilityValue("\(localisedProfileNavTab)")
        }
        
        .foregroundColor(.white).padding(.trailing, 20).padding(.leading, 20)
    }
}

struct TabBarButton: View {
    let image: Image
    let isSelected: Bool
    let action: () -> Void
    let localisedHomeTab = NSLocalizedString("Home", comment: "")
    var body: some View {
        Button(action: action) {
            HStack {
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(10)
                
                
                if(image == Image.tabHome)  {
                    Text(localisedHomeTab).font(Font.nunitoBold).foregroundColor(Color.distanceColorText).padding(.trailing)
                    
                }
            }
            
            
            
        }.background(isSelected ? BaseColor.tabButtonColor : Color.clear).cornerRadius(10)
        
    }
}
