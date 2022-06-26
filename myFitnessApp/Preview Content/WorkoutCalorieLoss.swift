//
//  WorkoutCalorieLoss.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/8/22.


import Foundation
import SwiftUI
class GlobalModel: ObservableObject {
    static let global = GlobalModel()
  
    @Published var reps = ""
    @Published var sets = ""
    @Published var distance = ""
    @Published var time = ""
    @Published var weight = ""
}


struct CoreView: View {
    @StateObject var global = GlobalModel.global
    @State var isPresenting = false
    var body: some View {
        VStack{
            Text("Get them abs!")
                .padding()
            Text("Input the number of reps and sets to see how many calories you lost")
                .padding()
            TextField("Enter your reps", text: $global.reps)
            //let reps = Int($global.reps.text!) ?? 0
            TextField("Enter your sets", text: $global.sets)
            Button("Calculate") {
                isPresenting = true
            }
            NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
        }
    }
}
struct ArmsView: View {
    @StateObject var global = GlobalModel.global
    @State var isPresenting = false
    var body: some View {
        VStack{
           
            Text("Biceps in progress")
                .padding()
            Text("Input the number of reps and sets to see how many calories you lost")
                .padding()
            TextField("Enter your reps", text: $global.reps)
            //let reps = Int($global.reps.text!) ?? 0
            TextField("Enter your sets", text: $global.sets)
            Button("Calculate") {
                isPresenting = true
            }
            NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
        }
    }
}
struct LegsView: View {
    @StateObject var global = GlobalModel.global
    @State var isPresenting = false
    var body: some View {
        VStack{
            Text("Awesome job working out your legs!")
                .padding()
            Text("Input the number of reps and sets to see how many calories you lost")
                .padding()
            TextField("Enter your reps", text: $global.reps)
            //let reps = Int($global.reps.text!) ?? 0
            TextField("Enter your sets", text: $global.sets)
            Button("Calculate") {
                isPresenting = true
            }
            NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
        }
    }
}
struct CaloriesView: View {
    var body: some View {
        VStack{
            Text("This is how many calories you lost")
                .padding()
            
        }
    }
    
}
