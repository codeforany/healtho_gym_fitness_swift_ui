//
//  Healtho_GymApp.swift
//  Healtho Gym
//
//  Created by CodeForAny on 12/03/24.
//

import SwiftUI

@main
struct Healtho_GymApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                OnBoardingScreen()
            }
            .navigationViewStyle(.stack)
        }
    }
}
