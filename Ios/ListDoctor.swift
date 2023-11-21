//
//  DoctorList.swift
//  Ios
//
//  Created by Danni Ios on 19.11.2023.
//

import SwiftUI


struct List : View  {
    let scrums: [DoctorList]
    let nearDoctor = NSLocalizedString("Near Doctor", comment: "")
    
    
    var body: some View {
        
        VStack {
            HStack{
                Text(nearDoctor).font(Font.regularBoldLarger).foregroundColor(Color.welcomeTextColor)
                Spacer()
            }.padding(.leading, 12)
            
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                
            }
            
        }
        
        
    }
    
    
}





struct List_Preview : PreviewProvider  {
    static var previews: some View  {
        List(scrums: DoctorList.sampleData)
    }
    
}
