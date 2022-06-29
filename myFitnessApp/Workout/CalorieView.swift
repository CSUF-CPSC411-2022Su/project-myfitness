//
//  CalorieView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI

struct CaloriesView: View {
    //Calories lost calculatded based on Duration(mins) * (MET*3.5*weight)
    @ObservedObject var workoutInfo : WorkoutInfo = WorkoutInfo()
    //@StateObject var userInfo = UserInfo()
    
    var body: some View {
        ZStack {
            VStack{
                Image("youdidit11111")
                    .resizable()
                    .scaledToFit()
                
               /*Text("This is how many calories you lost \(workoutInfo.weightloss)")
                    .modifier(RegularText())
                    .padding()*/
            }
        }//End of ZStack
        .background(
               Image("green55555")
                   .resizable()
                   .edgesIgnoringSafeArea(.all)
                   .frame(width: 450, height: 850)
           )
    }//End of body View
}//End of CaloriesView struct

struct CalorieView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
            .previewInterfaceOrientation(.portrait)
    }
}
