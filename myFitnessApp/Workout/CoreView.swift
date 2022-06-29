//
//  CoreView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct CoreView: View {
    
    @StateObject var coreWorkoutInfo = CoreWorkoutInfo()
    @AppStorage("reps") var repsCore = ""
    @AppStorage("sets") var setsCore = ""
    @AppStorage("weight") var weightkg = ""
    @State private var isCalculated = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack{
                    ScrollView(.horizontal) {
                        HStack {
                            Image("core11111")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                            Image("core22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                            Image("core33333")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                            Image("core4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                            Image("core5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                            Image("core6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height:400)
                        }
                    }.frame(height: geometry.size.height / 3)
                    Text("Input the number of reps and sets to see how many calories you lost")
                        .modifier(RegularText())
                        .multilineTextAlignment(.center)
                        .padding()
                    VStack {
                        Text("Enter your reps")
                            .modifier(RegularText())
                        TextField("Reps", text: $repsCore)
                            .modifier(TextFieldModifiers())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        Text("Enter your sets")
                            .modifier(RegularText())
                        TextField("Sets", text: $setsCore)
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
                    Button("Calculate"){
                        if let validSets = Double(setsCore) {
                            coreWorkoutInfo.setsCore = validSets
                        }
                        if let validWeight = Double(weightkg) {
                            coreWorkoutInfo.weightkg = validWeight
                        }
                        if let validReps = Double(repsCore) {
                            let check = coreWorkoutInfo.METstrengthvalue
                            if check > 0 {
                                coreWorkoutInfo.met = check
                                coreWorkoutInfo.repsCore = validReps
                                coreWorkoutInfo.coreWeightLoss = coreWorkoutInfo.getCoreWeightloss()
                            }
                        }
                        isCalculated.toggle()
                        hideKeyboard()
                    }.padding()
                    Group {
                        if isCalculated {
                            Text("You lost \(coreWorkoutInfo.coreWeightLoss)")
                        }
                    }
                }//End of first VStack
            }//End of ZStack
            .background(
                   Image("green44444")
                       .resizable()
                       .aspectRatio(geometry.size, contentMode: .fill)
                       .edgesIgnoringSafeArea(.all)
                       .frame(width: 850, height: 850)
               )
        }//End of GeometryReader
        .onTapGesture {
            hideKeyboard()
        }
    }//End of body View
}//End of CoreView struct


struct CoreView_Previews: PreviewProvider {
    static var previews: some View {
        CoreView()
            .previewInterfaceOrientation(.portrait)
    }
}
