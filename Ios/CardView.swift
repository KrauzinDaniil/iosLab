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
            
            
            HStack {
                Image(scrum.image).resizable().frame(width: 80, height:50).clipShape(Circle())
                VStack{
                    Text(scrum.name)
                    Text(scrum.specialization)
                }
                Image("location")
                Text(String(scrum.distance)  + "KM")
                
                
                
            }.font(.caption)
            Divider()
            HStack {
                Image("clock-1")
                Text("4.8 (120 Reviews)")
                Spacer()
                Image("clock-2")
                Text("Open at 17:00")
                
                
                
            }.font(.caption)
            
            
            
            
        }.padding()
            .foregroundColor(scrum.theme.accentColor)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum:scrum).previewLayout(.fixed(width : 400, height : 100))
    }
}
