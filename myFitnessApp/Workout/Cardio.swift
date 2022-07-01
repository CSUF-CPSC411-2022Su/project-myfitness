//
//  Cardio.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct CardioView: View {
    //The WorkoutInfor() class contains all the necessary
    //data to perform the calculations for the cardio 
    //workout
    @ObservedObject var workoutInfo = WorkoutInfo()
    @AppStorage("time") var time = ""
    @AppStorage("dist") var distance = ""
    @AppStorage("weight") var weightkg = ""
    @State private var isCalculated = false

    var body: some View {
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
                }// End of weight VStack
                Button("Calculate"){
                    //If statements to check input validation
                    if let validTime = Double(time) {
                        workoutInfo.time = validTime
                    }
                    if let validWeight = Double(weightkg) {
                        workoutInfo.weightkg = validWeight
                    }
                    //A valid distance input will be checked in a switch
                    //statement in the WorkoutCalorieLoss file and return
                    //the appropriate MET value for calculation
                    if let validDistance = Double(distance) {
                        let check = workoutInfo.METcardiovalue
                        if check > 0 {
                            workoutInfo.met = check
                            workoutInfo.distance = validDistance
                            //Once the appropritate values are addigned, the function in 
                            //WorkoutCalorieLoss file is called and will compute the total
                            //calories lost after workout
                            workoutInfo.weightLossCardio = workoutInfo.cardioWeightLoss()
                        }
                    }
                    //Bool controls the text displaying the calories lost when Calculate is 
                    // clicked
                    isCalculated.toggle()
                    hideKeyboard()
                    }.padding()
                    //Text is hidden until the Calculate button is pressed and is displayed at 
                    //bottom
                    Group {
                        if isCalculated {
                            Text("Calories lost: \(workoutInfo.weightLossCardio)")
                        }
                    }
            } //End of VStack
        } //End of ZStack
        //ZStack used to layer the VStacks on top of a background image
        .background(
            Image("green22222")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 800, height: 850)
        )
        //Pressing anywhere on the screen hides the keyboard
        .onTapGesture {
            hideKeyboard()
        }
    } //End of body view
} //End of View struct
struct Cardio_Previews: PreviewProvider {
    static var previews: some View {
        CardioView()
    }
}
