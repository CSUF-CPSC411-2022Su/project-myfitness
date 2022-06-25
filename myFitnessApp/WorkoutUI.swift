//
//  WorkoutUI.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/25/22.
//

import Foundation
import SwiftUI

struct WorkoutView: View {
    //@State var reps = ""
    //@State var sets = ""
    //@State var distance = ""
    //@State var time = ""
    //@State var weight = ""
    var body: some View {
        GeometryReader { geometry in
        NavigationView {
            VStack{
                Text("Choose Your Workout")
                    //.modifier(TitleText())
            Image("fitness1")
                .resizable()
                .scaledToFit()
                
            HStack {
                NavigationLink(destination: CardioView()) {
                    Text("Cardio")
                }
                NavigationLink(destination: StrengthView()) {
                    Text("Strength")
                }
            }
            //.navigationBarTitle(Text("Choose workout"))
            }//
        }.frame(height: geometry.size.height / 2)
        } ///
    }
}

struct WorkoutUI_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
