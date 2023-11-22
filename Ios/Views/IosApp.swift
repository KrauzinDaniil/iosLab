//
//  IosApp.swift
//  Ios
//
//  Created by Danni Ios on 15.11.2023.
//

import SwiftUI

@main
struct IosApp: App {
    var body: some Scene {
        WindowGroup {
            TBView(scrums: DoctorList.sampleData)
            
        }
    }
}
