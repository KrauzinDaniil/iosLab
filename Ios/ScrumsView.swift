//
//  ScrumsView.swift
//  Ios
//
//  Created by Danni Ios on 16.11.2023.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
            
        }
        
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
