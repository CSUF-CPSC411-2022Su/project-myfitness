//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    init(){
        UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        CalorieCalculatorInput()
        
    }
}

struct CalorieCalculatorInput: View {
    @StateObject var userInfo = UserInfo()
    @AppStorage ("weight") var weight = ""
    @AppStorage ("height") var height = ""
    @AppStorage ("age") var age = ""
    @AppStorage ("exercise") var exercise: Exercise = .littleToNone
    @AppStorage ("gender") var gender: Gender = .male
    var body: some View {
        GeometryReader
        {
                    geometry in
                    NavigationView
                            {
                                ZStack
                                {
                                    VStack {
                                        
                                        Form
                                        {
                                            Section ("Weight") {
                                                TextField("Weight in TBD", text: $weight)
                                                    .keyboardType(.decimalPad)
                                            }
                                            Section ("Height") {
                                                            TextField("Height in TBD", text: $height)
                                                                .keyboardType(.decimalPad)
                                                        }
                                                        Section ("Age") {
                                                            TextField("Age in Years", text: $age)
                                                                .keyboardType(.decimalPad)
                                                        }
                                                        Section ("Exercise") {
                                                            Picker("Exercise", selection: $exercise) {
                                                                Text("Little To None").tag(Exercise.littleToNone)
                                                                Text("Light").tag(Exercise.light)
                                                                Text("Moderate").tag(Exercise.moderate)
                                                        Text("Active").tag(Exercise.active)
                                                        Text("Very Active").tag(Exercise.veryActive)
                                                    }
                                                }
                                                Section ("Gender") {
                                                    Picker("Gender", selection: $gender) {
                                                        Text("Male").tag(Gender.male)
                                                        Text("Female").tag(Gender.female)
                                                    }.pickerStyle(.segmented)
                                                }
                                        }
                                            NavigationLink(destination: CalorieCalculatorOutputView(userInfo: userInfo)
                                                .navigationTitle(Text("Reccomended Calorie Intake"))
                                                .navigationBarTitleDisplayMode(.inline)){
                                                Text("Calculate")
                                                    .foregroundColor(.white)
                                                    .padding([.leading, .trailing], 50)
                                                    .padding([.top, .bottom], 10)
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

                                        }.navigationTitle(Text("User Info"))
                                
                               
                            
                        }.background(
                            Image("green1")
                                .resizable()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: 450, height: 850))
                        
                        
                       
                    }
        }
        
           
      
        }
        
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

