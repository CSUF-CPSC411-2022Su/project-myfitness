//
//  CalorieCalculatorOutputView.swift
//  myFitnessApp
//
//  Created by Cortez, David on 6/19/22.
//

import Foundation
import SwiftUI

struct CalorieCalculatorOutputView: View {
    @ObservedObject var userInfo: UserInfo
    var body : some View {
        HStack (alignment: .top) {
            VStack {
                Text("Reccomended Calorie Intake: ")
                    .padding()
                HStack {
                    Text("Maintain Weight:")
                    Text("\(userInfo.BMR) calories/day")
                }
                .padding()
                HStack {
                    Text("Lose Weight (~1 pound / week):")
                    let weightlossBMR = userInfo.BMR - 500
                    Text("\(weightlossBMR) calories/day")
                }
            }
            
        }
       
    }
}
