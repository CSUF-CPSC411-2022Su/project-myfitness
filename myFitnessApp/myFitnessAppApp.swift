//
//  myFitnessAppApp.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI

@main
struct myFitnessAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("User Info", systemImage: "person.crop.square.fill")
                    }
                WorkoutUI()
                    .tabItem {
                        Label("Work-Out", systemImage: "figure.walk.circle.fill")
                    }
                MealRecommendationsUI()
                    .tabItem {
                        Label("Meals", systemImage: "fork.knife.circle.fill")
                    }
            }
        }
    }
}
