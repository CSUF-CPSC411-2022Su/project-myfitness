//
//  UpperBodyView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI
struct UpperBodyView: View {
    @StateObject var upperWorkoutInfo = UpperWorkoutInfo()
    @AppStorage("repsUp") var repsUp = ""
    @AppStorage("setsUp") var setsUp = ""
    @AppStorage("weight") var weightkg = ""
    @State private var isCalculated = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            Image("arms1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("arms2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("arms3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("arms4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("arms5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: 400)
                            Image("arms6")
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
                        TextField("Reps", text: $repsUp)
                            .modifier(TextFieldModifiers())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text("Enter your sets")
                            .modifier(RegularText())
                        TextField("Sets", text: $setsUp)
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
                        if let validSets = Double(setsUp) {
                            upperWorkoutInfo.setsUp = validSets
                        }
                        if let validWeight = Double(weightkg) {
                            upperWorkoutInfo.weightkg = validWeight
                        }
                        if let validReps = Double(repsUp) {
                            let check = upperWorkoutInfo.METstrengthvalue
                            if check > 0 {
                                upperWorkoutInfo.met = check
                                upperWorkoutInfo.repsUp = validReps
                                upperWorkoutInfo.upperWeightLoss = upperWorkoutInfo.getUpperWeightLoss()
                            }
                        }
                        isCalculated.toggle()
                        hideKeyboard()
                    }.padding()
                    Group {
                        if isCalculated {
                            Text("Calories lost: \(upperWorkoutInfo.upperWeightLoss)")
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
} // End of View struct
struct UpperBodyView_Previews: PreviewProvider {
    static var previews: some View {
        UpperBodyView()
            .previewInterfaceOrientation(.portrait)
    }
}
