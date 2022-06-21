//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI

struct WorkoutView: View {
    @State var reps = ""
    @State var sets = ""
    @State var distance = ""
    @State var time = ""
    @State var weight = ""
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
