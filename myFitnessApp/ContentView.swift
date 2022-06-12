//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI



struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    var info = UserInfo()
    @State var exercise: Exercise = .littleToNone
    var body: some View {
        VStack {
            TextField("Weight", text: $weight)
                .padding()
                .border(.gray)
                .keyboardType(.decimalPad)
            TextField("Height", text: $height)
                .padding()
                .border(.gray)
                .keyboardType(.decimalPad)
            TextField("Age", text: $age)
                .padding()
                .border(.gray)
                .keyboardType(.decimalPad)
            Picker("Exercise", selection: $exercise) {
                Text("Little To None").tag(Exercise.littleToNone)
                Text("Light").tag(Exercise.light)
                Text("Moderate").tag(Exercise.moderate)
                Text("Active").tag(Exercise.active)
                Text("Very Active").tag(Exercise.veryActive)
            }
            .padding()
            .border(.gray, width: 3)
            .pickerStyle(.menu)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
