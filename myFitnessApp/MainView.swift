//
//  MainView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/27/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
