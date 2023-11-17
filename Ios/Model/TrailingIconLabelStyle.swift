//
//  TrailingIconLabelStyle.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI
struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
            
        }
       }
    
}
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
