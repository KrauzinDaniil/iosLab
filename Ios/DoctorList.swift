//
//  DoctorList.swift
//  Ios
//
//  Created by Danni Ios on 19.11.2023.
//

import SwiftUI


struct DoctorList : View  {
    let scrums: [DailyScrum]
    
    
    var body: some View {
        
        VStack {
            HStack{
                Text("Near Doctor")
                Spacer()
            }
            
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                
            }
            
        }
        
        
    }
    
    
}





struct DoctorList_Preview : PreviewProvider  {
    static var previews: some View  {
        DoctorList(scrums: DailyScrum.sampleData)
    }
    
}
