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




struct CaloriesView: View {
    var body: some View {
        ZStack {
            
            VStack{
                Image("youdidit")
                    .resizable()
                    .scaledToFit()
                Text("This is how many calories you lost")
                    .padding()
                
            }
        }//End of ZStack
        .background(
               Image("green5")
                   .resizable()
                   .edgesIgnoringSafeArea(.all)
                   .frame(width: 450, height: 850)
           )
    }//End of body View
}//End of CaloriesView struct
