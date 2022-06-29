//
//  Cardio.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct CardioView: View {
    @ObservedObject var workoutInfo = WorkoutInfo()
    @AppStorage("time") var time = ""
    @AppStorage("dist") var distance = ""
    @AppStorage("weight") var weightkg = ""
    @State private var isCalculated = false

    var body: some View {
        // GeometryReader { geometry in
        ZStack {
            VStack {
                Image("cardiorun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.top, -90)
                Text("Input the distance and time of cardio workout to calculate calories lost")
                    .multilineTextAlignment(.center)
                    .modifier(RegularText())
                    .padding(.top, -20)
                VStack {
                    Text("Enter the distance in miles per hour: ")
                        .modifier(RegularText())
                        .padding()
                    TextField("Distance", text: $distance)
                        .modifier(TextFieldModifiers())
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                    // let reps = Int($global.reps.text!) ?? 0
                } // End of Distance VStack
                VStack {
                    Text("Enter time to complete exercise")
                        .modifier(RegularText())
                        .padding()
                    TextField("Time", text: $time)
                        .modifier(TextFieldModifiers())
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                } // End of time VStack
                VStack {
                    Text("Enter weight to complete exercise")
                        .modifier(RegularText())
                        .padding()
                    TextField("Weight", text: $weightkg)
                        .modifier(TextFieldModifiers())
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                }
                Button("Calculate") {
                    if let validTime = Double(time) {
                        workoutInfo.time = validTime
                    }
                    if let validWeight = Double(weightkg) {
                        workoutInfo.weightkg = validWeight
                    }
                    if let validDistance = Double(distance) {
                        let check = workoutInfo.METcardiovalue
                        if check > 0 {
                            workoutInfo.met = check
                            workoutInfo.distance = validDistance
                            workoutInfo.weightLossCardio = workoutInfo.cardioWeightLoss()
                        }
                    }
                    isCalculated.toggle()
                    hideKeyboard()
                }.padding()
                Group {
                    if isCalculated {
                        Text("You lost \(workoutInfo.weightLossCardio)")
                    }
                }
            } // End of VStack
        } // End of ZStack
        .background(
            Image("green22222")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 800, height: 850)
        )
        // }//End of GeometryReader
        .onTapGesture {
            hideKeyboard()
        }
    } // End of body view
} // End of View struct
struct Cardio_Previews: PreviewProvider {
    static var previews: some View {
        CardioView()
    }
}
