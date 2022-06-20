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
        VStack {
                Text("Reccomended Calorie Intake: ")
                .padding()
            HStack {
                Text("Maintain Weight:")
                Text("\(userInfo.BMR) calories/day")
            }
            .padding()
            HStack {
                Text("Lose Weight:")
                let weightlossBMR = userInfo.BMR - 500
                Text("\(weightlossBMR) calories/day")
            }
        }
    }
}
