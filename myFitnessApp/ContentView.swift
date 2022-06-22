//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        CalorieCalculatorInput()
    }
}

struct CalorieCalculatorInput: View {
    @StateObject var userInfo = UserInfo()
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    @State var exercise: Exercise = .littleToNone
    @State var gender: Gender = .male
    var body: some View {
        NavigationView {
            VStack
            {
                HStack {
                    Text("Weight:")
                    TextField("Weight in TBD", text: $weight)
                        .padding()
                        .border(.gray)
                        .keyboardType(.decimalPad)
                }
                HStack {
                    Text("Height:")
                    TextField("Height in TBD", text: $height)
                        .padding()
                        .border(.gray)
                        .keyboardType(.decimalPad)
                }
                HStack {
                    Text("Age:")
                    TextField("Age in Years", text: $age)
                        .padding()
                        .border(.gray)
                        .keyboardType(.decimalPad)
                }
                HStack {
                    Text("Activity:")
                    Picker("Exercise", selection: $exercise) {
                        Text("Little To None").tag(Exercise.littleToNone)
                        Text("Light").tag(Exercise.light)
                        Text("Moderate").tag(Exercise.moderate)
                        Text("Active").tag(Exercise.active)
                        Text("Very Active").tag(Exercise.veryActive)
                }
                    .padding(10)
                    .overlay(alignment: .leading){
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.gray, lineWidth: 1)
                    
                }
               
                }
                .pickerStyle(.menu)
                Picker("Gender", selection: $gender) {
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }
                .padding([.trailing, .leading], 10)
                .padding([.top, .bottom], 10)
                .pickerStyle(.segmented)
                
                NavigationLink(destination: CalorieCalculatorOutputView(userInfo: userInfo))  {
                    Text("Calculate")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }.simultaneousGesture(TapGesture().onEnded{
                    if let validWeight = Double(weight) {
                        userInfo.weight = validWeight
                    }
                    if let validHeight = Double(height) {
                        userInfo.height = validHeight
                    }
                    if let validAge = Int(age) {
                        userInfo.age = validAge
                    }
                    userInfo.gender = gender
                    userInfo.exercise = exercise
                    
                })
                
            }.navigationTitle(Text("Input User Info"))

        }
        
    }
    func calculateUserInfo() -> Double {
        let testHeight = Double(height) ?? 0
        let testWeight = Double(weight) ?? 0
        let testAge = Int(age) ?? 0
        let userInfo: UserInfo = UserInfo(weight: testWeight, height: testHeight, gender: gender, age: testAge, exercise: exercise)
        return userInfo.calculateCalorieIntake()
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

