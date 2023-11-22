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
                Text(nearDoctor).font(Font.semiBoldPoppins).foregroundColor(Color.welcomeTextColor).accessibilityLabel("\(nearDoctor)")
                Spacer()
            }.padding(.leading, 12)
            
            ForEach(scrums) { scrum in
                DoctorSample(scrum: scrum)
                
            }
            
        }
        
        
    }
    
    
}





struct Lis_Preview : PreviewProvider  {
    static var previews: some View  {
        List(scrums: DoctorList.sampleData)
    }
    
}
