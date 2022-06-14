//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CardioView()) {
                    Text("Cardio")
                }
                NavigationLink(destination: StrengthView()) {
                    Text("Strength")
                }
            }
            .navigationBarTitle(Text("Choose workout"))
        }
    }
}
struct ConView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
