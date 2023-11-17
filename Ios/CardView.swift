//
//  CardView.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI


struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
        Text(scrum.title).font(.headline).accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3").accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                            Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20).labelStyle(.trailingIcon).accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                
                
            }.font(.caption)

        }.padding()
        .foregroundColor(scrum.theme.accentColor)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[1]
        static var previews: some View {
            CardView(scrum:scrum).previewLayout(.fixed(width : 400, height : 60))
        }
}
