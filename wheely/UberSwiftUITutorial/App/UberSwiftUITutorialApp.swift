//
//  UberSwiftUITutorialApp.swift
//  UberSwiftUITutorial
//
//  Created by Saffanah Alkhathlan on 18/06/1444 AH.
//

import SwiftUI

@main
struct UberSwiftUITutorialApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
        
    HomeView()
        .environmentObject(locationViewModel)
        }
    }
}
