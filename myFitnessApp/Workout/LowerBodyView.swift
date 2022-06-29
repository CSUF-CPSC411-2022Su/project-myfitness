//
//  LowerBodyView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct LowerBodyView: View {
    @StateObject var lowerWorkoutInfo = LowerWorkoutInfo()
    @AppStorage("repsLow") var repsLow = ""
    @AppStorage("setsLow") var setsLow = ""
    @AppStorage("weight") var weightkg = ""
    @State private var isCalculated = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            Image("legs1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("legs2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("legs3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("legs4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("legs5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("legs6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                        }
                    }.frame(height: geometry.size.height / 3)
                    Text("Input the number of reps and sets to see how many calories you lost")
                        .modifier(RegularText())
                        .multilineTextAlignment(.center)
                        .padding()
                    VStack {
                        Text("Enter your reps")
                            .modifier(RegularText())
                        TextField("Reps", text: $repsLow)
                            .modifier(TextFieldModifiers())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text("Enter your sets")
                            .modifier(RegularText())
                        TextField("Sets", text: $setsLow)
                            .modifier(TextFieldModifiers())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text("Enter weight to complete exercise")
                            .modifier(RegularText())
                        TextField("Weight", text: $weightkg)
                            .modifier(TextFieldModifiers())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                    }
                    Button("Calculate") {
                        if let validSets = Double(setsLow) {
                            lowerWorkoutInfo.setsLow = validSets
                        }
                        if let validWeight = Double(weightkg) {
                            lowerWorkoutInfo.weightkg = validWeight
                        }
                        if let validReps = Double(repsLow) {
                            let check = lowerWorkoutInfo.METstrengthvalue
                            if check > 0 {
                                lowerWorkoutInfo.met = check
                                lowerWorkoutInfo.repsLow = validReps
                                lowerWorkoutInfo.lowerWeightLoss = lowerWorkoutInfo.getLowerWeightLoss()
                            }
                        }
                        isCalculated.toggle()
                        hideKeyboard()
                    }.padding()
                    Group {
                        if isCalculated {
                            Text("Calories lost: \(lowerWorkoutInfo.lowerWeightLoss)")
                        }
                    }
                } // End of first VStack
            } // End of ZStack
            .background(
                Image("green44444")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: 850, height: 850)
            )
        } // End of GeometryReader
        .onTapGesture {
            hideKeyboard()
        }
    } // End of body View
} // End of View Struct
struct LowerBodyView_Previews: PreviewProvider {
    static var previews: some View {
        LowerBodyView()
            .previewInterfaceOrientation(.portrait)
    }
}
