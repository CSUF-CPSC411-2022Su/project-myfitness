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
    @State var exercise: Exercise = .littleToNone
    @State var gender: Gender = .male
    var body: some View {
        VStack {
            Text("Calorie Intake Calculator")
                .padding()
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
            .padding([.trailing, .leading], 800)
            .padding([.top, .bottom], 10)
            .overlay(alignment: .leading){
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 1)
            }
            .pickerStyle(.menu)
            Picker("Gender", selection: $gender) {
                Text("Male").tag(Gender.male)
                Text("Female").tag(Gender.female)
            }
            .padding([.trailing, .leading], 10)
            .padding([.top, .bottom], 10)
            .pickerStyle(.segmented)
            
            Button(action: calculateUserInfo){
                Text("Calculate")
                    .padding([.trailing, .leading], 40)
            }
            .buttonStyle(.borderedProminent)
        }
    }
    func calculateUserInfo() {
        let testHeight = Double(height) ?? 0
        let testWeight = Double(weight) ?? 0
        let testAge = Int(age) ?? 0
        let userInfo: UserInfo = UserInfo(weight: testWeight, height: testHeight, gender: gender, age: testAge, exercise: exercise)
        userInfo.calculateCalorieIntake()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
