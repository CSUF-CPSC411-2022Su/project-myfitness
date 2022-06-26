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
            List {
                Section ("Maintain Weight") {
                    Text("\(Int(userInfo.BMR)) calories/day")
                }
                Section ("Lose Weight (~1 pound / week)"){
                    let weightlossBMR = userInfo.BMR - 500
                    Text("\(Int(weightlossBMR)) calories/day")
                }
            }
            
        }
        
            
       
    }
}


struct fancy: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .border(Color.black)
    }
}
